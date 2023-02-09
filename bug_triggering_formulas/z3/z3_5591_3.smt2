(declare-fun a () String)
(assert (= (= a "") (str.in_re a (re.range "A" a))))
(check-sat)
