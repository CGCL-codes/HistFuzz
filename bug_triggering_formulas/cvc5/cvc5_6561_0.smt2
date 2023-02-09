(declare-fun a () String)
(assert (ite (str.in_re (str.++ a "c") (re.* (re.range "a" ""))) (not (= a "")) (str.in_re a (re.* (re.range a "")))))
(check-sat)
