(define-sort a () Int)

(define-sort b () (Set a))

(declare-fun c (Int) b)
(declare-fun d () Int)
(declare-fun f () Int)
(declare-fun g () b)
(declare-fun e () b)
(assert (= (c d) (setminus g e) (union e (c f))))
(assert (or (distinct (c f) (setminus e (c f)))))
(check-sat)
