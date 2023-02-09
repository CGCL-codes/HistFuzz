(declare-fun s () String)
(assert (= (str.at s 2) ""))
(push)
(check-sat)
