(declare-fun a () String)
(declare-fun b () String)
(assert (distinct (str.replace a (str.replace "" b "") a) (str.++ a a)))
(check-sat)
