(assert (forall ((q187 (_ BitVec 10)) (q188 (_ BitVec 9))) true))
(assert (forall ((q248 (_ BitVec 10)) (q249 (_ BitVec 200))) (=> (= (_ bv0 200) (bvudiv q249 q249)) (= q248 (_ bv0 10)))))
(check-sat)
