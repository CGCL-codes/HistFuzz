(declare-fun a () String)
(assert (str.in_re (str.++ "z" a) (re.++ (re.* (re.union (re.diff (re.++ (re.* (re.union (str.to_re "z") (str.to_re "b"))) (str.to_re "a")) (re.+ (re.* (re.union (str.to_re "z") (str.to_re (str.at "a" (str.len a))))))) (re.* (re.range "a" "u")))) (str.to_re "b") (re.* (str.to_re "")))))
(check-sat)
