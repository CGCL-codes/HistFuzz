(declare-fun a () String)
(declare-fun b () String)
(declare-fun c () String)
(declare-fun d () String)
(assert (= (str.substr a 0 (str.len d)) "AAA"))
(assert (not (str.contains c "A")))
(assert (= (str.substr a 0 (str.len b)) "A"))
(assert (= (str.indexof c "B" 0) 0))
(check-sat)
