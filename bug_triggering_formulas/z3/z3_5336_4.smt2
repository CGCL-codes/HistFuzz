(assert (exists ((a (Array (_ BitVec 1) (_ BitVec 1)))) (forall ((b (Array (_ BitVec 1) (_ BitVec 1)))) (and (not (= a b)) (= (a (_ bv0 1)) (b (_ bv0 1)))))))
(check-sat)
