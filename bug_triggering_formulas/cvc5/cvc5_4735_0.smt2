(declare-fun a () String)
(declare-fun b () Int)
(declare-fun c () String)
(declare-fun d () String)
(declare-fun e () String)
(declare-fun f () String)
(declare-fun g () String)
(declare-fun h () String)
(declare-fun i () Bool)
(declare-fun j () String)
(declare-fun k () String)
(assert (= e "0000000000"))
(assert (distinct a d))
(assert (ite (distinct b 0) (and (= (str.++ d e) (str.++ c j)) (= (str.len c) 2) (= j (str.++ f k)) (= f (str.++ g h)) (str.in_re g (str.to_re "A"))) (str.in_re j (str.to_re ""))))
(assert (distinct i (= b 0)))
(assert i)
(check-sat)
