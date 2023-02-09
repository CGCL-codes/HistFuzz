(declare-fun a () String)
(assert (not (str.in_re a (re.* (re.union (str.to_re (ite (str.in_re a (re.* (re.union (str.to_re a) (str.to_re "c")))) a "")) (str.to_re "c"))))))
(check-sat)
