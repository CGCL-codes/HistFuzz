(declare-fun a () String)
(assert (str.in_re "A" (re.range "A" "")))
(check-sat)
