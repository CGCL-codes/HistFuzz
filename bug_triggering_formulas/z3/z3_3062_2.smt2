(declare-fun a () String)
(declare-fun b () String)
(assert (distinct (str.prefixof a (str.substr b 20 2)) (str.prefixof a (str.at b 7))))
(check-sat)
