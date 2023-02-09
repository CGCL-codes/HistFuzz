(declare-fun a () String)
(assert (= a (str.replace "A" a "")))
(check-sat)
