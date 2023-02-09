(declare-fun a () String)
(assert (str.< a "ar"))
(assert (str.prefixof "ar" (str.replace a "ar" "")))
(check-sat)
