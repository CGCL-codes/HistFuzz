(declare-fun x () Int)
(assert (str.prefixof "a" (int.to.str x)))
(check-sat)
