(assert (forall ((q21 (_ BitVec 10)) (q22 (_ BitVec 10)) (q23 (_ BitVec 12))) (=> (bvule q21 q22) (= (bvneg q23) q23))))
(check-sat)
