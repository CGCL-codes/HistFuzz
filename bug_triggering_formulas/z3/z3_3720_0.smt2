(declare-sort a)

(declare-sort b)

(declare-sort c)

(declare-sort s)

(declare-fun m (s a) Int)
(declare-fun d () s)
(declare-fun e (b Int) Int)
(declare-fun f (c Int) b)
(declare-fun n () c)
(assert (forall ((?g Int) (?h Int)) (let ((?i (e (f n ?g) ?h))) (= (e (f n 0) ?i) 0))))
(assert (forall ((?j Int)) (let ((?k (f n ?j))) (= 0 (e ?k 0)))))
(assert (forall ((?j Int) (?g Int)) (let ((?i (f n ?j))) (= (e ?i 0) (e ?i ?g)))))
(assert (forall ((?j a) (?g a)) (let ((?i (m d ?j))) (let ((?k (f n ?i))(?l (m d ?g))) (= (< 0 (e ?k ?l)) (< 0 ?i))))))
(check-sat)
