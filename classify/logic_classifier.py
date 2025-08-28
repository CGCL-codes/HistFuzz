#!/usr/bin/env python3
"""
Classify SMT-LIB formulas into logics using an OpenAI chat model (e.g., GPT-4).

Usage:
  # Set API key (OpenAI or DeepSeek)
  setx OPENAI_API_KEY "<your-openai-key>"
  setx DEEPSEEK_API_KEY "<your-deepseek-key>"

  # OpenAI example
  python src/openai_logic_classifier.py --root bug_triggering_formulas --model gpt-4o-mini --out results_openai.csv

  # DeepSeek example (OpenAI-compatible SDK)
  python src/openai_logic_classifier.py --root bug_triggering_formulas --model deepseek-chat --base-url https://api.deepseek.com --api-key %DEEPSEEK_API_KEY% --out results_deepseek.csv

Notes:
- The prompt instructs the model to return only the logic name in plain text without explanations.
- Results are printed to stdout and also saved to CSV/JSON if requested.
- You can control concurrency with --workers.
- You can also set OPENAI_BASE_URL or DEEPSEEK_API_BASE/DEEPSEEK_BASE_URL env vars instead of --base-url.
"""
from __future__ import annotations

import argparse
import csv
import json
import os
import re
import sys
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, List, Optional

try:
    # OpenAI Python SDK v1.x (also used for DeepSeek via base_url)
    from openai import OpenAI
except Exception as e:  # pragma: no cover
    print("The 'openai' package is required. Install with: pip install openai", file=sys.stderr)
    raise


ALLOWED_LOGICS = [
    # De-duplicated canonical set from the provided list
    "AUFLIA",
    "AUFLIRA",
    "AUFNIRA",
    "LIA",
    "LRA",
    "ABV",
    "AUFBV",
    "AX",
    "BV",
    "IDL",
    "NIA",
    "NRA",
    "RDL",
    "UF",
    "UFBV",
    "UFIDL",
    "UFLIA",
    "UFLRA",
    "UFNRA",
    "UFNIA",
    "Core",
]

# Exact prompt as provided, with a placeholder for the formula content.
PROMPT_TEMPLATE = (
    """
Given the following SMT-LIB formula, please determine the specific logic it belongs to.

SMT-LIB Formula:
```

[FORMULA]

```

Here are the available logics:

1. **AUFLIA**: Linear integer arithmetic and arrays, extended with free sort and function symbols.
2. **AUFLIRA**: Linear formulas over one- and two-dimensional arrays with integer index and real value.
3. **AUFNIRA**: Formulas with free function and predicate symbols over arrays of arrays.
4. **LIA**: Linear integer arithmetic formulas.
5. **LRA**: Linear real arithmetic formulas.
6. **ABV**: Formulas over bitvectors and bitvector arrays.
7. **AUFBV**: Formulas over bitvectors and arrays extended with free sort and function symbols.
8. **AUFLIA**: Linear integer formulas over arrays with free sort and function symbols.
9. **AX**: Formulas over arrays with extensionality.
10. **BV**: Formulas over fixed-size bitvectors.
11. **IDL**: Difference Logic over integers.
12. **LIA**: Linear integer arithmetic.
13. **LRA**: Linear real arithmetic.
14. **NIA**: Integer arithmetic.
15. **NRA**: Real arithmetic.
16. **RDL**: Difference Logic over reals.
17. **UF**: Formulas with uninterpreted symbols.
18. **UFBV**: Formulas over bitvectors with uninterpreted symbols.
19. **UFIDL**: Difference Logic over integers with uninterpreted symbols.
20. **UFLIA**: Linear integer arithmetic with uninterpreted symbols.
21. **UFLRA**: Linear real arithmetic with uninterpreted symbols.
22. **UFNRA**: Non-linear real arithmetic with uninterpreted symbols.
23. **UFLRA**: Linear real arithmetic with uninterpreted symbols.
24. **UFNIA**: Non-linear integer arithmetic with uninterpreted symbols.

If the formula does not belong to any of the listed logics and only contains basic Boolean terms, it belongs to the **Core** theory.

Please output the logic in plain text. **Do not provide any explanations.**
"""
).strip()


@dataclass
class Result:
    path: Path
    logic: str
    raw: str


def read_text(path: Path, max_chars: Optional[int] = 12000) -> str:
    text = path.read_text(encoding="utf-8", errors="ignore")
    if max_chars is not None and len(text) > max_chars:
        return text[:max_chars]
    return text


def build_prompt(formula: str) -> str:
    return PROMPT_TEMPLATE.replace("[FORMULA]", formula)


def clean_logic(s: str) -> str:
    # Keep only the first non-empty tokenized line; remove markdown/code fencing if any
    s = s.strip()
    s = re.sub(r"^`+|`+$", "", s)  # strip stray backticks
    # In case the model returns a code block, try to extract first non-empty line
    lines = [ln.strip() for ln in s.splitlines() if ln.strip()]
    if not lines:
        return s
    candidate = lines[0]
    # Normalize common artifacts
    candidate = re.sub(r"^Logic:\s*", "", candidate, flags=re.I)
    candidate = candidate.strip().strip(".")
    return candidate


def enforce_allowed_logic(logic: str) -> str:
    # Attempt to coerce to one of the allowed logics; case-insensitive exact match
    up = logic.upper()
    for item in ALLOWED_LOGICS:
        if up == item.upper():
            return item
    # Very small alias map (expand as needed)
    aliases = {
        "QF_BV": "BV",
        "QF_UF": "UF",
        "QF_LIA": "LIA",
        "QF_LRA": "LRA",
        "QF_NIA": "NIA",
        "QF_NRA": "NRA",
        "QF_UFBV": "UFBV",
        "CORE": "Core",
    }
    if up in aliases:
        return aliases[up]
    return logic  # return as-is; caller may re-prompt or accept


def classify_file(client: OpenAI, model: str, path: Path, retries: int = 3, retry_backoff: float = 2.0) -> Result:
    formula = read_text(path)
    prompt = build_prompt(formula)

    last_err: Optional[Exception] = None
    for attempt in range(retries):
        try:
            resp = client.chat.completions.create(
                model=model,
                messages=[{"role": "user", "content": prompt}],
                temperature=0,
                max_tokens=16,
            )
            raw = resp.choices[0].message.content or ""
            logic = enforce_allowed_logic(clean_logic(raw))
            return Result(path=path, logic=logic, raw=raw)
        except Exception as e:  # pragma: no cover
            last_err = e
            sleep_for = retry_backoff ** attempt
            time.sleep(sleep_for)
    # If we reach here, all retries failed
    raise RuntimeError(f"OpenAI classification failed for {path}: {last_err}")


def iter_smt2_files(root: Path) -> Iterable[Path]:
    return sorted(root.rglob("*.smt2"))


def save_csv(results: List[Result], out_path: Path) -> None:
    out_path.parent.mkdir(parents=True, exist_ok=True)
    with out_path.open("w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["file", "logic"])  # header
        for r in results:
            w.writerow([str(r.path.as_posix()), r.logic])


def save_json(results: List[Result], out_path: Path) -> None:
    out_path.parent.mkdir(parents=True, exist_ok=True)
    payload = [
        {
            "file": str(r.path.as_posix()),
            "logic": r.logic,
            "raw": r.raw,
        }
        for r in results
    ]
    out_path.write_text(json.dumps(payload, indent=2), encoding="utf-8")


def main(argv: Optional[List[str]] = None) -> int:
    p = argparse.ArgumentParser(description="Classify SMT-LIB formulas with an OpenAI model")
    p.add_argument("--root", type=Path, default=Path("bug_triggering_formulas"), help="Root folder to scan for .smt2 files")
    p.add_argument("--model", type=str, default="gpt-4o-mini", help="OpenAI chat model to use (e.g., gpt-4o-mini, gpt-4-turbo)")
    p.add_argument("--workers", type=int, default=min(8, (os.cpu_count() or 2)), help="Number of concurrent workers")
    p.add_argument("--out", type=Path, default=Path("results_openai.csv"), help="CSV output file path")
    p.add_argument("--json", type=Path, default=None, help="Optional JSON output file path including raw responses")
    p.add_argument("--limit", type=int, default=None, help="Optionally limit the number of files processed")
    # New: provider-agnostic API configuration for OpenAI-compatible endpoints (e.g., DeepSeek)
    p.add_argument("--api-key", type=str, default=None, help="API key (overrides env OPENAI_API_KEY/DEEPSEEK_API_KEY)")
    p.add_argument("--base-url", type=str, default=None, help="OpenAI-compatible API base URL (e.g., https://api.deepseek.com)")
    p.add_argument("--provider", type=str, choices=["openai", "deepseek"], default=None, help="Convenience flag to set defaults for a provider")
    args = p.parse_args(argv)

    # Resolve API configuration
    api_key = args.api_key or os.getenv("OPENAI_API_KEY") or os.getenv("DEEPSEEK_API_KEY")
    base_url = (
        args.base_url
        or os.getenv("OPENAI_BASE_URL")
        or os.getenv("DEEPSEEK_API_BASE")
        or os.getenv("DEEPSEEK_BASE_URL")
    )
    if args.provider == "deepseek" and not base_url:
        base_url = "https://api.deepseek.com"

    # Initialize OpenAI-compatible client
    if api_key or base_url:
        client = OpenAI(api_key=api_key, base_url=base_url)
    else:
        # Fallback to environment-only configuration
        client = OpenAI()

    files = list(iter_smt2_files(args.root))
    if args.limit is not None:
        files = files[: args.limit]

    if not files:
        print(f"No .smt2 files found under: {args.root}", file=sys.stderr)
        return 1

    results: List[Result] = []

    with ThreadPoolExecutor(max_workers=args.workers) as ex:
        fut_to_path = {ex.submit(classify_file, client, args.model, path): path for path in files}
        for fut in as_completed(fut_to_path):
            path = fut_to_path[fut]
            try:
                r = fut.result()
                results.append(r)
                # Print per-file as: <relative-path>\t<logic>
                rel = path.relative_to(args.root.parent if args.root.is_absolute() else Path("."))
                print(f"{rel.as_posix()}\t{r.logic}")
            except Exception as e:  # pragma: no cover
                print(f"ERROR\t{path}: {e}", file=sys.stderr)

    # Save outputs
    if args.out:
        save_csv(results, args.out)
    if args.json:
        save_json(results, args.json)

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
