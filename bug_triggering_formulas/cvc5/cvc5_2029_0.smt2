(declare-sort S2 0)

(declare-sort S3 0)

(declare-sort S5 0)

(declare-sort S10 0)

(declare-sort S11 0)

(declare-fun f3 (S3 S2) Real)
(declare-fun f7 (S5 Int) S2)
(declare-fun f8 () S5)
(declare-fun f18 (S10 Real) Real)
(declare-fun f19 (S11 Real) S10)
(declare-fun f36 () S3)
(declare-fun f143 () S11)
(assert (forall ((?v0 Real) (?v1 Real) (?v2 Real)) (= (+ (f18 (f19 f143 0.0) ?v1) ?v2) (f18 (f19 f143 0.0) 0.0))))
(assert (= (f3 f36 (f7 f8 0)) 0.0))
(assert (forall ((?v0 Int) (?v1 Int) (?v2 Int) (?v3 Int) (?v4 Int)) (=> (not (= ?v0 0)) (=> (not (= ?v3 ?v4)) (not (= (+ 0 (* ?v0 ?v3)) (+ 0 (* ?v0 ?v4))))))))
(check-sat)
