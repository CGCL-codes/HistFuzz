(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () String)
(assert (= (str.from_int 11) (str.++ c (str.from_int b))))
(assert (= 0 (+ b (* 11 a))))
(check-sat)
