(declare-fun a () String)
(declare-fun b () String)
(declare-fun c () String)
(declare-fun d () String)
(assert (= (str.replace a b "") (str.++ c d)))
(check-sat)
