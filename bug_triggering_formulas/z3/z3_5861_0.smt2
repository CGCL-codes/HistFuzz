(declare-const x (Array Bool Int))
(declare-fun v () Bool)
(declare-fun v6 () Bool)
(check-sat)
(assert (= (store (store x false 0) v 3) (store (store x v6 1) true 0)))
(check-sat)
