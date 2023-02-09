(declare-fun a () String)
(assert (str.in.re a (re.++ (re.* (re.union (str.to.re "b") (str.to.re "z"))) (re.range "a" "u") (re.range "a" "u"))))
(assert (not (str.in.re (str.++ "a" a) (re.inter (re.* (str.to.re "bc")) (str.to.re "")))))
(check-sat)
