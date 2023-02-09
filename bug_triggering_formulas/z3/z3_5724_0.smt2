(declare-fun X () String)
(assert (not (str.in.re X (re.* (re.union (re.range "\u{0}" "\u{7F}") (re.range "\u{80}" "\u{FF}"))))))
(check-sat)
