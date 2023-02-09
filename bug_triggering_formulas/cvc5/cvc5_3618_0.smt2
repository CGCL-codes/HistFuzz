(assert (= 0 (ite true 0 (ite true 0 ""))))
(check-sat)
