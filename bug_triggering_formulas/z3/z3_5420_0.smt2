(declare-fun x1 () (_ BitVec 1))
(declare-fun o2 () Bool)
(assert (forall ((o13 Bool)) (exists ((x3 (_ BitVec 1))) (forall ((x4 (_ BitVec 1))) (and o2 (not (bvult x3 x1)) (= o13 (bvult x4 x1)))))))
(check-sat)
