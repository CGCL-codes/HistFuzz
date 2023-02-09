(declare-fun y () (_ BitVec 1))
(assert (forall ((b1 Bool)) (forall ((x (_ BitVec 1))) (and b1 (= x y)))))
(check-sat)
