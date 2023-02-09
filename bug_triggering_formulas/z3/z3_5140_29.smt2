(declare-fun a () String)
(assert (= (and (str.in_re a (re.range "u" "u")) (str.in_re "a" (re.* (re.range (str.replace_re "u" (str.to_re "u") "u") "u"))) (str.in_re a (re.range "u" "u"))) true))
(check-sat)
