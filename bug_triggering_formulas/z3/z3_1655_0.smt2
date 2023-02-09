(declare-fun x () (_ BitVec 8))
(declare-fun m () (_ BitVec 8))
(assert (= m x))
(check-sat)
