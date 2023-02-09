(declare-fun _substvar_36_ () (_ BitVec 10))
(assert (not (forall ((q7 Bool) (q8 Bool) (q9 (_ BitVec 21)) (q10 Bool) (q11 (_ BitVec 21))) (not (= q11 q9 q11 (concat #b01111000010 _substvar_36_))))))
(check-sat)
