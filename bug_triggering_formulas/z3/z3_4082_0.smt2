(declare-fun a () String)
(declare-fun b () String)
(assert (= (str.substr (str.++ a "abc" b) 20 1) "a"))
(check-sat)
