(declare-fun a () String)
(assert (distinct (str.in.re a (re.inter (str.to.re "B") (re.+ (str.to.re "B")))) (str.in.re a (str.to.re "BB"))))
(assert (= (str.in.re a (re.union (str.to.re "A") (str.to.re "B"))) (str.in.re a (re.inter (str.to.re "") (str.to.re "B")))))
(check-sat)
