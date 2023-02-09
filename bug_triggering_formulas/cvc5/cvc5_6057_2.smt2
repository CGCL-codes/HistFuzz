(declare-fun a () String)
(assert (str.in_re a (re.++ (re.* (re.opt (str.to_re a))) (str.to_re "b"))))
(assert (str.contains (str.replace_re_all (str.++ "a" a) (re.++ (re.* (str.to_re "a")) (str.to_re "b")) "") "a"))
(check-sat)
