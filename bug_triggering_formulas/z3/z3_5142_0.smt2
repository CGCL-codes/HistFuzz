(declare-fun a () String)
(assert (or (not (str.in_re a (re.* (re.range "a" "u")))) (str.in_re "b" (re.* (re.range "a" (ite (= a "") "z" "")))) (str.in_re (ite (str.in_re a (re.* (re.comp (str.to_re "")))) "z" "") (str.to_re ""))))
(assert (ite (str.in_re a (re.* (re.range "" ""))) true (str.in_re a (str.to_re (str.replace_all "" "" a)))))
(check-sat)
