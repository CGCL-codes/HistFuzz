(declare-fun a () Int)
(assert (str.suffixof "B" (str.from_code a)))
(check-sat)
