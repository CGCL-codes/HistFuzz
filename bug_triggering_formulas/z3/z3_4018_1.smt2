(declare-fun a () String)
(declare-fun b () Int)
(assert (distinct (str.substr (str.replace "B" a "A") b b) (str.substr "B" 0 (str.indexof "A" a b))))
(check-sat)
