(declare-fun a () String)
(assert (str.in_re a (re.diff re.allchar (re.++ (re.* re.allchar) (str.to_re (ite (str.in_re a re.allchar) a ""))))))
(check-sat)
