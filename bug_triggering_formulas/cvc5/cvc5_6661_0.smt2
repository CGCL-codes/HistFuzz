(declare-fun a () String)
(assert (not (= (str.in_re a (re.diff (re.+ re.allchar) re.allchar)) (str.in_re a (re.++ re.allchar (str.to_re "A"))))))
(check-sat)
