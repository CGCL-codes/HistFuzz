(declare-const i5 Int)
(assert (>= (str.len (str.from_code i5)) 42))
(check-sat)
