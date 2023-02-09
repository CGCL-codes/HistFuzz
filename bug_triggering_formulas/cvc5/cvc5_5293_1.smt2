(declare-const v4 Bool)
(declare-const _34-0 (_ BitVec 34))
(assert (or (not (forall ((q26 Bool) (q27 (_ BitVec 4)) (q28 Bool) (q29 (_ BitVec 4)) (q30 (_ BitVec 34)) (q31 (_ BitVec 38))) (xor (= #x9 #x9 q29 (_ bv11 4) #x9) (= q30 (bvudiv _34-0 _34-0) _34-0 (bvudiv _34-0 _34-0) (bvudiv _34-0 _34-0)) (not v4)))) (not (forall ((q26 Bool) (q27 (_ BitVec 4)) (q28 Bool) (q29 (_ BitVec 4)) (q30 (_ BitVec 34)) (q31 (_ BitVec 38))) (xor (= #x9 #x9 q29 (_ bv11 4) #x9) (= q30 (bvudiv _34-0 _34-0) _34-0 (bvudiv _34-0 _34-0) (bvudiv _34-0 _34-0)) (not v4))))))
(check-sat)
