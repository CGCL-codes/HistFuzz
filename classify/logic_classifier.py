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
from typing import Iterable, List, Optional, Tuple

try:
    # OpenAI Python SDK v1.x (also used for DeepSeek via base_url)
    from openai import OpenAI
except Exception as e:  # pragma: no cover
    print("The 'openai' package is required. Install with: pip install openai", file=sys.stderr)
    raise

# Optional: token estimation via tiktoken if available; fall back to heuristic
try:  # pragma: no cover - optional dependency
    import tiktoken  # type: ignore

    def _estimate_tokens(text: str, model: str = "cl100k_base") -> int:
        try:
            enc = tiktoken.get_encoding("cl100k_base")
        except Exception:
            enc = tiktoken.get_encoding("cl100k_base")
        return len(enc.encode(text))

except Exception:  # pragma: no cover
    def _estimate_tokens(text: str, model: str = "cl100k_base") -> int:
        # Rough heuristic: ~4 chars per token
        return max(1, len(text) // 4)


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

# Updated prompt with clearer guidance, examples, and the [FORMULA] placeholder.
PROMPT_TEMPLATE = (
        """
Given the following SMT-LIB formula, please determine the specific logic it belongs to.

SMT-LIB Formula:
```

[FORMULA]

```

### Important Notes
- **Uninterpreted functions/sorts (UF):** These are symbols without built-in meaning in SMT-LIB.  
    - Example: `(declare-fun f (Int) Int)` introduces a function `f` that can take any interpretation.  
    - Example: `(declare-sort U 0)` declares a free/uninterpreted type `U`.  
    Logics containing `UF` allow such free sorts and functions.  

- **Linear vs Non-linear arithmetic:**  
    - Linear: variables appear with degree ≤ 1 (e.g., `(+ x y)`, `(* 3 x)`).  
    - Non-linear: multiplication/division of variables (e.g., `(* x y)`).  

- **Difference Logic (IDL/RDL):** Constraints only of the form `x - y < c`.  

- If the formula only contains Boolean terms (`true`, `false`, `and`, `or`, `not`, etc.) with no arithmetic, arrays, bitvectors, or UF, then the logic is **Core**.  

### Available Logics
1. **AUFLIA** – Linear integer arithmetic + arrays + uninterpreted symbols.  
2. **AUFLIRA** – Linear arithmetic (ints & reals) + arrays + uninterpreted symbols.  
3. **AUFNIRA** – Non-linear arithmetic + arrays + uninterpreted symbols.  
4. **LIA** – Linear integer arithmetic.  
5. **LRA** – Linear real arithmetic.  
6. **ABV** – Bitvectors and bitvector arrays.  
7. **AUFBV** – Bitvectors + uninterpreted symbols.  
8. **AUFLIA** – Linear integer arrays + uninterpreted symbols.  
9. **AX** – Arrays with extensionality.  
10. **BV** – Fixed-size bitvectors.  
11. **IDL** – Integer Difference Logic.  
12. **LIA** – Linear integer arithmetic.  
13. **LRA** – Linear real arithmetic.  
14. **NIA** – Non-linear integer arithmetic.  
15. **NRA** – Non-linear real arithmetic.  
16. **RDL** – Real Difference Logic.  
17. **UF** – Only uninterpreted symbols (no arithmetic/arrays/bitvectors).  
18. **UFBV** – Bitvectors + uninterpreted symbols.  
19. **UFIDL** – Integer Difference Logic + uninterpreted symbols.  
20. **UFLIA** – Linear integer arithmetic + uninterpreted symbols.  
21. **UFLRA** – Linear real arithmetic + uninterpreted symbols.  
22. **UFNRA** – Non-linear real arithmetic + uninterpreted symbols.  
23. **UFLRA** – Linear real arithmetic + uninterpreted symbols.  
24. **UFNIA** – Non-linear integer arithmetic + uninterpreted symbols.  

### Few-Shot Examples
Example 1:  
Formula:  
```

(declare-fun x () Int)
(declare-fun y () Int)
(assert (> (+ x y) 5))
(check-sat)

```
Answer: `LIA`  

Example 2:  
Formula:  
```

(declare-fun f (Int) Int)
(declare-fun x () Int)
(assert (= (f x) (+ x 1)))
(check-sat)

```
Answer: `UFLIA`  

Example 3:  
Formula:  
```

(declare-fun a () (Array Int Int))
(declare-fun i () Int)
(assert (= (select (store a i 10) i) 10))
(check-sat)

```
Answer: `AUFLIA`  

Example 4:  
Formula:  
```

(declare-fun x () (_ BitVec 8))
(declare-fun y () (_ BitVec 8))
(assert (= (bvadd x y) #x0A))
(check-sat)

```
Answer: `BV`  

---

### Final Instruction
Please output **only the logic name in plain text**. Do not provide explanations.
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


def detect_set_logic(text: str) -> Optional[str]:
    """Return logic from an existing (set-logic <LOGIC>) command if present."""
    m = re.search(r"\(\s*set-logic\s+([^)\s]+)\s*\)", text, flags=re.IGNORECASE)
    if m:
        return m.group(1)
    return None


def strip_comments_and_metadata(text: str) -> str:
    """Remove ';' line comments and metadata commands like set-info/set-option.
    Keep set-logic, declare/define, assert, and check-sat.
    """
    out_lines: List[str] = []
    for ln in text.splitlines():
        if ln.lstrip().startswith(";"):
            continue
        if re.match(r"^\s*\(set-info\b", ln):
            continue
        if re.match(r"^\s*\(set-option\b", ln):
            continue
        out_lines.append(ln)
    return "\n".join(out_lines)


def sample_relevant_lines(text: str) -> str:
    """Keep only lines most relevant for logic detection if needed.
    Priority: set-logic, declare-sort, declare-fun, define-fun, assert, arrays/bv ops, check-sat.
    """
    keep_patterns = [
        r"^\s*\(set-logic\b",
        r"^\s*\(declare-sort\b",
        r"^\s*\(declare-fun\b",
        r"^\s*\(define-fun\b",
        r"^\s*\(assert\b",
        r"\bArray\b|\bselect\b|\bstore\b|\(_\s*BitVec\b|\bbv\w+\b",
        r"^\s*\(check-sat\b",
    ]
    keep_re = re.compile("(" + ")|(".join(keep_patterns) + ")", flags=re.IGNORECASE)
    lines = [ln for ln in text.splitlines() if keep_re.search(ln)]
    return "\n".join(lines) if lines else text


def minimize_formula_for_context(
    formula: str,
    model: str,
    max_prompt_tokens: Optional[int],
    template_fn,
) -> Tuple[str, bool]:
    """Return a possibly shortened formula so that the final prompt stays within token limits.
    Returns (possibly_shortened_formula, was_truncated).
    If max_prompt_tokens is None, returns original formula.
    """
    if not max_prompt_tokens:
        return formula, False

    # 1) Strip comments and metadata
    stage1 = strip_comments_and_metadata(formula)
    prompt = template_fn(stage1)
    if _estimate_tokens(prompt) <= max_prompt_tokens:
        return stage1, stage1 != formula

    # 2) Keep only relevant lines
    stage2 = sample_relevant_lines(stage1)
    prompt = template_fn(stage2)
    if _estimate_tokens(prompt) <= max_prompt_tokens:
        return stage2, True

    # 3) Aggressive cropping: take head and tail portions around chars limit, iteratively shrink
    text = stage2
    # Start with char-based window guided by tokens (approx 4 chars per token)
    approx_chars = max(1024, max_prompt_tokens * 4 - 2000)
    if len(text) > approx_chars:
        head = text[: approx_chars // 2]
        tail = text[-(approx_chars // 2) :]
        text = head + "\n...\n" + tail

    # Iteratively shrink until under token limit or minimal size
    for _ in range(6):
        prompt = template_fn(text)
        tokens = _estimate_tokens(prompt)
        if tokens <= max_prompt_tokens:
            return text, True
        # shrink by 25%
        new_len = max(512, int(len(text) * 0.75))
        text = text[: new_len]

    return text, True


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


def classify_file(
    client: OpenAI,
    model: str,
    path: Path,
    retries: int = 3,
    retry_backoff: float = 2.0,
    *,
    max_prompt_tokens: Optional[int] = None,
    max_formula_chars: Optional[int] = None,
    verbose_truncation: bool = False,
) -> Result:
    text = read_text(path, max_chars=max_formula_chars)

    # Fast path: if set-logic is present, trust and return it
    set_logic = detect_set_logic(text)
    if set_logic:
        logic = enforce_allowed_logic(set_logic)
        return Result(path=path, logic=logic, raw=f"set-logic {set_logic}")

    # Prepare formula under token limits
    def _tpl(f: str) -> str:
        return build_prompt(f)

    minimized_formula, truncated = minimize_formula_for_context(
        text, model=model, max_prompt_tokens=max_prompt_tokens, template_fn=_tpl
    )
    prompt = build_prompt(minimized_formula)

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
            if truncated and verbose_truncation:
                print(f"[truncate] {path}: prompt shortened to fit context", file=sys.stderr)
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
    # Context-window safety
    p.add_argument("--max-prompt-tokens", type=int, default=None, help="Max tokens for the final prompt (est.). If omitted, no token-based truncation.")
    p.add_argument("--max-formula-chars", type=int, default=None, help="Max characters to read per file before preprocessing (default: no cap)")
    p.add_argument("--verbose-truncation", action="store_true", help="Print a note when a prompt is truncated to fit context")
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
        fut_to_path = {
            ex.submit(
                classify_file,
                client,
                args.model,
                path,
                max_prompt_tokens=args.max_prompt_tokens,
                max_formula_chars=args.max_formula_chars,
                verbose_truncation=args.verbose_truncation,
            ): path
            for path in files
        }
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
