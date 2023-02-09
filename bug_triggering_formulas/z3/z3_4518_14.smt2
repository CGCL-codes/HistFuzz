(declare-fun a () String)
(declare-fun b () String)
(assert (str.in_re (str.++ a "A" b) (re.* (str.to_re "B"))))
(check-sat)
