(assert (forall ((a (_ BitVec 32))) (exists ((b (_ BitVec 32))) (bvsle a b))))
(check-sat)
