(declare-sort a )                                                                  

(declare-fun b () a)
(declare-fun c () a)
(declare-fun d () a)
(declare-fun o () a)
(declare-fun e () a)
(declare-fun f () a)
(declare-fun p () a)
(declare-fun g () a)
(declare-fun h () a)
(declare-fun i () a)
(declare-fun j () a)
(declare-fun k (a a) Bool)
(assert (forall ((l a) (m a) (n a)) (or (not (and (k l m) (k m n))) (k l n))))
(assert (forall ((l a) (m a)) (not (and (k l m) (k m l)))))
(assert (k f b))
(assert (k b p))
(assert (k p o))
(assert (k o d))
(assert (k d j))
(assert (k j e))
(assert (k e c))
(assert (k c h))
(assert (k h g))
(assert (k g i))
(push)
(check-sat)
