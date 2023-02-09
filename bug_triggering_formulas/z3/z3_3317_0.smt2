(declare-const i2 Int)
(assert (distinct i2 (abs (* 52 i2 i2 70))))
(assert (> 82 (mod 442 (* 52 i2 i2 70))))
(check-sat)
