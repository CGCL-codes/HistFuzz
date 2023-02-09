(declare-sort g)

(declare-sort t)

(declare-sort S3)

(declare-sort a)

(declare-sort S14)

(declare-sort S15)

(declare-sort b)

(declare-sort p)

(declare-sort S30)

(declare-sort c)

(declare-sort d)

(declare-sort u)

(declare-sort S38)

(declare-sort e)

(declare-fun f () g)
(declare-fun v (S3 t) a)
(declare-fun q (S15 S14) S14)
(declare-fun r (b S14) g)
(declare-fun f22 (p a) b)
(declare-fun h () p)
(declare-fun i () c)
(declare-fun f59 (S30 a) a)
(declare-fun s (d a) t)
(declare-fun j (u d) S30)
(declare-fun k (S38 S3) u)
(declare-fun l () S38)
(declare-fun m (e S30) S15)
(declare-fun f104 () e)
(assert (forall ((n S3) (o d) (w a)) (= (f59 (j (k l n) o) w) (v n (s o w)))))
(assert (forall ((n a) (o S30) (w S14)) (=> (= (r (f22 h n) (q (m f104 o) w)) f) (forall ((qv3 a)) (= (= n (f59 o qv3)) (not (= (r (f22 h qv3) w) f)))) false)))
(check-sat)
