(declare-fun a () String)
(assert (not (= a (str.replace_re_all a re.allchar a))))
(check-sat)
