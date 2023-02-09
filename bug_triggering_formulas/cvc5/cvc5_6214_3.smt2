(declare-fun s () String)
(assert (str.in_re (ite (str.in_re s (re.+ (str.to_re "a"))) s "a") (re.+ (str.to_re (str.replace (str.++ s "a") "a" s)))))
(check-sat)
