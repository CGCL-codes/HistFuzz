(declare-sort a) 

(declare-sort b) 

(declare-sort c) 

(declare-sort d) 

(declare-sort n) 

(declare-fun e (b Int) a)
(declare-fun f () b)
(declare-fun o (c a) Int)
(declare-fun g () c)
(declare-fun h (d Int) Int)
(declare-fun i () d)
(declare-fun j (n Int) c)
(declare-fun k () n)
(assert (= 0 (o (j k 0) (e f 2))))
(assert (forall ((?l Int)) (let ((?m (e f 2))) (= (o (j k (h i ?l)) ?m) 0))))
(assert (forall ((?l Int)) (let ((?m (o (j k ?l) (e f 2)))) (= (h i ?m) ?m))))
(assert (forall ((?l Int)) (= (o g (e f ?l)) 0)))
(check-sat)
