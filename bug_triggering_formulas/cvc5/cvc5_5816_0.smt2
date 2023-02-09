(declare-fun a () String)
(assert (str.in_re a (re.++ (re.* (re.union (re.* (str.to_re "")) (re.union (str.to_re "") (str.to_re a)))) (re.++ (str.to_re "") (re.++ (re.* (re.range "a" "u")) (str.to_re ""))))))
(check-sat)
