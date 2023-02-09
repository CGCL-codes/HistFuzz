(declare-fun a (Real Real) Bool)
(declare-fun b () Real)
(assert (ite (=> (a 2 (ite (a 0 2) 1 0)) (a (ite (distinct 2 (ite (a 0 2) 1 0)) (ite (<= (ite (a b 2) 1 0) 0) 2 (+ (ite (a 2 2) 1 0) (ite (a 0 2) 1 0))) b) 2)) (a (+ (ite (a 2 2) 1 0) (ite (a 0 2) 1 0)) b) false))
(check-sat)
