(declare-fun a () String)
(assert (not (str.in_re a (re.* (re.inter (re.opt (str.to_re a)) (re.++ (re.* (str.to_re "b")) (re.opt (str.to_re a))))))))
(check-sat)
