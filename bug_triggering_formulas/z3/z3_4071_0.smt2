(declare-fun a () String)
(assert (str.prefixof "B" (str.replace "A" a "")))
(check-sat)
