(declare-fun a () Real)
(declare-fun b () Real)
(assert (<= (/ a (* a a (+ a (mod (to_int a) (to_int a))))) 0 b))
(check-sat)
