(declare-fun a () String)
(assert (str.in_re (str.++ a "z") (re.++ (re.union (str.to_re "c") (str.to_re (ite (= a "") "z" ""))) (str.to_re "z") (str.to_re (ite (= a "") "z" "")))))
(check-sat)
