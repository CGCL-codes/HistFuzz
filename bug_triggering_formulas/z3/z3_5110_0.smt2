(declare-const x (List Int))
(assert (not (exists ((y (List Int))) (= x (tail y)))))
(check-sat)
