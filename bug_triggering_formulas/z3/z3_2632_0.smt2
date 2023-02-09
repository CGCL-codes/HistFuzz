(declare-const a String)
(assert (str.in.re a (re.++ (str.to.re "") (re.* (str.to.re "b")))))
(assert (str.in.re a (re.union (re.union (re.+ (str.to.re "")) (re.+ (str.to.re ""))) (str.to.re "v"))))
(check-sat)
