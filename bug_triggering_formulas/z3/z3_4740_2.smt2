(declare-fun _substvar_398_ () Bool)
(declare-fun uf6_2 (Bool Bool Bool Bool Bool Bool) Bool)
(declare-const r0 Real)
(declare-const r5 Real)
(declare-fun ufrb3 (Real Real Real) Bool)
(declare-const v1 Bool)
(assert (and v1 (= true true v1 v1 (= r0 (- r5) 11139.1) _substvar_398_ true true) (ufrb3 r0 3615.0 11139.1) (uf6_2 false true false false v1 true)))
(push)
(assert (not (uf6_2 false (= r0 (- r5) 11139.1) false false v1 true)))
(check-sat)
