(assert (str.in_re "" (re.diff (re.* re.allchar) re.allchar (re.* re.allchar))))
(check-sat)
