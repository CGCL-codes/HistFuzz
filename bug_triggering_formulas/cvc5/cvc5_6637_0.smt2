(declare-fun a () String)
(assert (= (str.len a) 2))
(assert (= (str.len (str.replace_re_all a (str.to_re "A") "B")) 3))
(check-sat)
