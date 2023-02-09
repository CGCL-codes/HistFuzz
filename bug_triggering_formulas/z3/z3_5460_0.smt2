(assert (exists ((T (_ BitVec 8))) (= (_ bv0 32) ((_ zero_extend 24) T))))
(check-sat)
