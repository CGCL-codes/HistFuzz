(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(declare-fun d () Real)
(declare-fun e () Real)
(assert (< (+ (/ (* c c) (* 2.0 e))) d))
(assert (= a (+ b c)))
(check-sat)
(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(declare-fun d () Real)
(declare-fun e () Real)
(assert (< (+ (/ (* c c) (* 2.0 e))) d))
(assert (= a (+ b c)))
(check-sat)
