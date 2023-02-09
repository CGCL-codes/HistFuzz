(declare-sort a)

(declare-sort b)

(declare-sort c)

(declare-fun d (c a) b)
(declare-fun k () c)
(declare-fun i () c)
(declare-fun e (b) a)
(declare-fun f (b) a)
(declare-fun j (b b) Bool)
(assert (forall ((g a)) (let ((h (d i g))) (j (d i (f (d k (e h)))) h))))
(check-sat)
