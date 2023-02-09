(assert (exists ((a (_ BitVec 1))) (forall ((b (_ BitVec 1))) (forall ((c (_ BitVec 1))) (forall ((d (_ BitVec 1))) false)))))
(check-sat)
