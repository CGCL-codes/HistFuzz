(declare-const x String)
(assert (str.in.re x (re.union (str.to.re "b") (re.* (str.to.re "a")))))
(assert (str.in.re x (re.union (str.to.re "a") (re.+ (str.to.re "")))))
(assert (str.in.re x (re.++ (re.+ (str.to.re "")) (re.* (re.++ (str.to.re "L") (str.to.re "g"))))))
(check-sat)
