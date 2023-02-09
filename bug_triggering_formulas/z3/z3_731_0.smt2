(declare-fun c0 () Int)
(assert (not (= c0 (str.to.int (int.to.str c0)))))
(check-sat)
