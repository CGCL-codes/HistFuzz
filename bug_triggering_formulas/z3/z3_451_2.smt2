(assert (forall ((x Int)) (=> (< 0 x) (exists ((w Int) (y (_ BitVec 32)) (z (_ BitVec 32))) (and (= w x) (bvsle y z))))))
(check-sat)
