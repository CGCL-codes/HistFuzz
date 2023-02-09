(declare-fun a () String)
(declare-fun b () String)
(assert (str.in_re (str.++ a "A" b) (re.opt (str.to_re "ABB"))))
(check-sat)
