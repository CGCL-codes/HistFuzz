(declare-const x String)
(assert (= "\u{5C}u\u{7B}0\u{7D}" x))
(check-sat)
