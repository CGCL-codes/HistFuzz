(declare-const v8 Bool)
(push)
(assert true)
(push)
(assert true)
(declare-const v11 Bool)
(check-sat)
(push)
(declare-const v12 Bool)
(assert (not (exists ((q13 Bool)) (not (=> (distinct v8 true true true true true true) true)))))
(declare-const v13 Bool)
(check-sat)
