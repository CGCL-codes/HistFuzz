(declare-fun a () String)
(assert (xor (distinct (str.in.re a (re.union (str.to.re "B") (re.* (str.to.re "B")))) (str.in.re a (re.union (str.to.re "B") (str.to.re "BB")))) (distinct (str.in.re a (re.inter (re.union (str.to.re "A") re.allchar) (str.to.re "B"))) (str.in.re a (re.union (str.to.re "A") (str.to.re "B"))))))
(check-sat)
