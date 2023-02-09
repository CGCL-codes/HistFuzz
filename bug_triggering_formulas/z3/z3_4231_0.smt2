(declare-const v9 Bool)
(declare-const v11 Bool)
(assert (not (exists ((q4 (_ BitVec 8)) (q5 Bool) (q6 (_ BitVec 8))) (=> (= (_ bv0 8) q4) (and v9 v9 v11)))))
(check-sat)
