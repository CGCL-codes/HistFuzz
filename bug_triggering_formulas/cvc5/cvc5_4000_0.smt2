(declare-const v9 Bool)
(assert (forall ((q0 (_ BitVec 8)) (q1 Bool) (q2 (_ BitVec 8))) (=> (=> v9 q1) false)))
(check-sat)
