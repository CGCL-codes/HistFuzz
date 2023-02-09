(declare-fun a () String)
(assert (str.in_re a (re.++ (str.to_re (ite (str.in_re a (re.++ (str.to_re "\u\u\u\u\u") (re.* re.allchar))) a "\u\u\u\u\u")) (re.* re.allchar))))
(check-sat)
