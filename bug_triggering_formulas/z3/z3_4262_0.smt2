(declare-fun a () String)
(assert (xor (str.in.re a (re.* (str.to.re "A"))) (str.in.re a (re.++ re.allchar re.all)) (str.in.re a (re.opt (str.to.re "A")))))
(check-sat)
