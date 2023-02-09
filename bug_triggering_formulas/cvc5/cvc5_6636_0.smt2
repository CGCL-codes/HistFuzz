(declare-fun a () String)
(assert (not (= a (str.replace_re_all a (re.++ (re.* re.allchar) (str.to_re a) (re.* re.allchar)) a))))
(check-sat)
