(declare-fun x () String)
(declare-fun y () String)
(assert (distinct (str.++ x "ba") (str.++ "ab" x)))
(assert (distinct (str.++ y "ab") (str.++ "ab" y)))
(check-sat)
