(declare-fun a () String)
(declare-fun b () String)
(assert (str.in_re (str.++ a "z" b) (re.++ (re.union (re.* (str.to_re "z")) re.none) (re.++ (re.* (re.* (re.* (str.to_re "z")))) (re.union (re.inter (re.++ (re.* (str.to_re "z")) (str.to_re "a")) (str.to_re (str.replace "" (str.++ a "") (str.++ "" "")))) (str.to_re "a"))))))
(assert (xor (str.in_re b (re.* (re.union (str.to_re "a") re.none))) (str.in_re b (re.range "a" "u"))))
(check-sat)
