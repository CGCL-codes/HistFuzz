(declare-fun a () String)
(declare-fun b () String)
(assert (str.contains (str.++ a b) (str.++ b "x")))
(check-sat)
