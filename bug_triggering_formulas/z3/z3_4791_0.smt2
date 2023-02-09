(assert (str.in_re "A" (re.diff (re.* re.allchar) re.allchar (re.* re.allchar))))
(check-sat)
