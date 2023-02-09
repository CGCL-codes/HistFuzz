(declare-fun a () String)
(declare-fun b () String)
(assert (= (str.replace (str.++ "abc" b) "b" a) (str.++ "ac" b)))
(check-sat)
