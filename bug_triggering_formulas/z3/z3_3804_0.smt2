(assert (forall ((q5 (_ BitVec 9)) (q6 (_ BitVec 9)) (q7 (_ BitVec 9)) (q8 Bool)) (=> q8 (bvslt (_ bv0 9) q7))))
(assert (forall ((q9 (_ BitVec 9)) (q10 (_ BitVec 9)) (q11 (_ BitVec 9)) (q12 (_ BitVec 8))) true))
(check-sat)
