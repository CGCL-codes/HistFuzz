(assert (forall ((q0 (_ BitVec 12)) (q1 (_ BitVec 12)) (q2 Bool)) true))
(assert (forall ((q4 (_ BitVec 12)) (q5 (_ BitVec 12)) (q6 (_ BitVec 12)) (q7 Bool)) (distinct (bvxor q4 q6) (_ bv0 12))))
(check-sat)
