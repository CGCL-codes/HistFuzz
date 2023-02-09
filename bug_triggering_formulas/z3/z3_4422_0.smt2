(declare-fun a () String)
(declare-fun b () String)
(assert (= (str.replace (str.++ a "B" a b) "A" "") (str.++ (str.replace (str.++ a b) "A" "") b)))
(check-sat)
