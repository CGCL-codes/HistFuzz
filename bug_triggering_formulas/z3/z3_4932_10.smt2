(declare-fun a () String)
(assert (= (str.suffixof "A" (str.replace "" a "")) (= a "")))
(check-sat)
