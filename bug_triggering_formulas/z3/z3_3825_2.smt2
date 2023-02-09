(assert (forall ((a (_ BitVec 100))) (= (bvmul a a) a)))
(check-sat)
