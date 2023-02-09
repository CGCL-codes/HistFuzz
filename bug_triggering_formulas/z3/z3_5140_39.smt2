(declare-fun a () Int)
(assert (= (str.replace_all "-1" "" "") (str.from_int a)))
(check-sat)
