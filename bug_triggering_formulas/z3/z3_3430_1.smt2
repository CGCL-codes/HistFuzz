(declare-fun x () String)
(assert (distinct (str.++ x "ba") (str.++ "ab" x)))
(check-sat)
