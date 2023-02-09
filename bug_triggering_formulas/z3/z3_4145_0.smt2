(declare-fun a () String)
(declare-fun b () String)
(assert (= (str.substr (str.++ a "aa" b) 4 (str.len a)) a))
(check-sat)
