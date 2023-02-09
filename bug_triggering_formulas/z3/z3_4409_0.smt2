(declare-const a String)
(assert (distinct (str.to_code (str.from_code (str.to_code a))) (str.to_code a)))
(check-sat)
