(declare-fun c0 () Int)
(assert (not (= 0 (str.indexof "a0" (str.substr "a" 0 c0)))))
(check-sat)
