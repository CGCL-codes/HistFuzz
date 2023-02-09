(declare-const a (Array Bool Bool))
(declare-const b (Array (Array Bool Bool) Int))
(assert (= b (store b a 0)))
(check-sat)
