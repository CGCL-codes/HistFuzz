(declare-fun f ((Array Int (Array Bool Int))) Int)
(declare-fun A2 () (Array Int (Array Bool Int)))
(assert (exists ((A3 (Array Int (Array Bool Int)))) (exists ((A1 (Array Int (Array Bool Int)))) (and (> (f A1) 0) (= 0 (f A2)) (> (f A3) 0)))))
(check-sat)
