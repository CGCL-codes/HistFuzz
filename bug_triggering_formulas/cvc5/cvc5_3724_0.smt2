(declare-fun a (Int) Int)
(declare-fun b () Int)
(declare-fun c () Int)
(declare-fun d () Bool)
(declare-fun e (Int) Bool)
(declare-fun f (Int) Bool)
(assert (let ((a!1 (and (not (or (and d d) d)) (e 0)))(a!2 (and (not (or (and d d) d)) (or (not d) d)))(a!3 (ite (not (or (and d d) d)) 0 9))) (let ((a!4 (ite (not (e 0)) 0 (ite d 0 (ite a!1 0 (ite a!2 0 a!3)))))) (let ((a!5 (ite (and (distinct c 0) (e (a a!4))) (ite (f (a a!4)) b 0) 0))) (let ((a!6 (and (= 0 a!5) (not (e (a a!4)))))) (not a!6))))))
(check-sat)
