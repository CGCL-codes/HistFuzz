(define-sort a () Int)

(define-sort b () Int)

(declare-fun c (Int Int Int) Int)
(declare-fun d (Int Int Int) Bool)
(declare-fun e () (Array a b))
(declare-fun aa ((Array a b) (Array a b) (Array a b)) Bool)
(declare-fun ac () (Array a b))
(assert (= (aa ac ac (ite (aa ac e e) e ac)) (aa ac e (ite (d 0 0 1) ac e)) (d (* 3 (c 1 0 0)) 0 0)))
(check-sat)
