(declare-fun round2 (Real) Int)
(assert (forall ((x Real) (i Int)) (xor (> x (to_real i)) (<= (round2 x) i))))
(assert (forall ((x Real) (i Int)) (or (< (to_real i) x) (>= i (round2 x)))))
(check-sat)
