(declare-const i2 Int)
(declare-const i4 Int)
(declare-const Str4 String)
(declare-const Str19 String)
(assert (distinct (str.substr Str4 0 (abs (- i2 i4 0))) ""))
(check-sat)
