(define-sort a () Int)

(define-sort b () Int)

(declare-fun c (Int Int Int) Int)
(declare-fun d (Int Int Int) Bool)
(declare-fun e () (Array a b))
(declare-fun f () (Array a b))
(declare-fun aa ((Array a b) (Array a b) (Array a b)) Bool)
(declare-fun ab () Int)
(declare-fun ac () (Array a b))
(declare-fun ad ((Array a b) (Array a b) (Array a b)) (Array a b))
(assert (let ((g (store f 1 0))) (let ((h (store e 7 0))) (let ((ae (ad f f h))) (let ((k (ad g h h))) (let ((af (ad e g ac))) (let ((i (aa af g k))) (let ((j (aa e f e))) (let ((l (= ab 3))) (let ((al (d 0 0 5))) (xor (= (not (= (aa f (ite i f (ite l ae e)) (ad (ad k h (ad (ad g g h) k e)) (ad (ad e e (ite l ae e)) (ad af ac (ad h h h)) h) (ad (ite j e k) (ite j e k) (ite j e k)))) (xor (d 7 2 6) (aa (ad ae (ite (d 5 8 5) k h) (ite l ae e)) (ad (ad f h f) ac (ad h e (ad e e (ite l ae e)))) (ad k (ad k (ad e e e) e) k))))) (aa (ad ac h (ite al e f)) (ite al e f) k) (d (* 6 (c 6 9 6)) 0 0)) (aa e (ad e e (ad ac g (ite (aa ac f h) (ite j e k) f))) h))))))))))))
(check-sat)
