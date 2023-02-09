(declare-fun a () String)
(declare-fun b () String)
(assert (distinct (str.++ a b) (str.++ b a)))
(check-sat)
