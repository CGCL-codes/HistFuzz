(declare-fun s () String)
(assert (not (str.in_re (str.++ s "BA") (re.* (re.union (str.to_re "AB") (re.++ (re.union (str.to_re "A") (str.to_re "B")) (re.union (str.to_re "B") (str.to_re (str.replace_all "B" "A" "")))))))))
(check-sat (= s ""))
(check-sat)
