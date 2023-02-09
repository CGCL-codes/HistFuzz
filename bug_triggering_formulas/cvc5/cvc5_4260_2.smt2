(declare-sort S0 0)

(declare-fun uf6 (Bool Bool Bool Bool Bool Bool) Bool)
(assert (uf6 true true true true true (not (exists ((q65 Bool) (q66 Int) (q67 (Array Real S0)) (q68 (Array Real S0)) (q69 Int) (q70 (Array Int Real))) (xor true true true (= q68 q68 q67 q68))))))
(check-sat)
