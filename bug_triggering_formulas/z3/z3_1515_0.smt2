(declare-const blah (List Int))
(assert (= (head blah) 1))
(assert (= blah nil))
(check-sat)
