(declare-fun a () String)
(assert (str.in_re "A" (re.range "A" (str.replace "A" (str.++ a "B") ""))))
(check-sat)
