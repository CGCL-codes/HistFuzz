(declare-fun x () (_ BitVec 32))
(declare-fun y () (_ BitVec 32))
(assert (not (bvsmul_noovfl x y)))
(check-sat)
