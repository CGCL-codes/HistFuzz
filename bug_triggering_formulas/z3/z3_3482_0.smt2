(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(declare-fun d () Real)
(declare-fun h () Real)
(declare-fun e () Real)
(declare-fun f () Real)
(declare-fun i () Real)
(assert (not (exists ((g Real)) (and (or (< 0.0 (* a c))) (<= (- (* d g)) e)))))
(assert (= b (+ d i)))
(assert (= c (/ h f f)))
(check-sat)
