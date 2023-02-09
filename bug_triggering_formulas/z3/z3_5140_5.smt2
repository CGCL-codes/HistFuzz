(declare-fun a () String)
(assert (str.in_re a (re.++ (re.* re.allchar) (re.++ (str.to_re (ite (ite (str.in_re a (re.+ (str.to_re "A"))) true (= a "AA")) a "A")) (re.* re.allchar)))))
(check-sat)
