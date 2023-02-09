(declare-fun x () String)
(assert (= (str.in.re x (re.++ (str.to.re "B") (re.+ (str.to.re "B")))) (str.in.re x (str.to.re "BB"))))
(assert (not (= (str.in.re x re.allchar) (str.in.re x (re.union (str.to.re "A") (str.to.re "B"))))))
(check-sat)
