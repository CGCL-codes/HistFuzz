(declare-sort S1 0)

(declare-sort S2 0)

(declare-sort S3 0)

(declare-sort S4 0)

(declare-sort S5 0)

(declare-sort S6 0)

(declare-sort S7 0)

(declare-sort S8 0)

(declare-sort S9 0)

(declare-sort S10 0)

(declare-sort S11 0)

(declare-sort S12 0)

(declare-sort S13 0)

(declare-sort S14 0)

(declare-sort S15 0)

(declare-sort S16 0)

(declare-sort S17 0)

(declare-sort S18 0)

(declare-sort S19 0)

(declare-fun f1 () S1)
(declare-fun f2 () S1)
(declare-fun f3 (S2 S3) S4)
(declare-fun f4 () S2)
(declare-fun f5 (S5 Int) S3)
(declare-fun f6 () S5)
(declare-fun f7 () S4)
(declare-fun f8 (S6 Real) Real)
(declare-fun f9 () S6)
(declare-fun f10 (S7 Int) Int)
(declare-fun f11 () S7)
(declare-fun f12 (S8 S4) S2)
(declare-fun f13 () S8)
(declare-fun f14 () S4)
(declare-fun f15 (S9 Real) S4)
(declare-fun f16 () S9)
(declare-fun f17 () S4)
(declare-fun f18 (S4 S10) S1)
(declare-fun f19 () S10)
(declare-fun f20 (Real S11) S1)
(declare-fun f21 () S11)
(declare-fun f22 (Int S12) S1)
(declare-fun f23 () S12)
(declare-fun f24 (S4) S1)
(declare-fun f25 (Real) S1)
(declare-fun f26 (Int) S1)
(declare-fun f27 (S13 S4) S4)
(declare-fun f28 () S13)
(declare-fun f29 (S14 Real) S9)
(declare-fun f30 () S14)
(declare-fun f31 (S15 S3) Real)
(declare-fun f32 (S16 Real) S15)
(declare-fun f33 () S16)
(declare-fun f34 (S17 S3) Int)
(declare-fun f35 (S18 Int) S17)
(declare-fun f36 () S18)
(declare-fun f37 (S19 S4) S3)
(declare-fun f38 () S19)
(declare-fun f39 () S17)
(declare-fun f40 () S13)
(declare-fun f41 () S19)
(assert (not (= f1 f2)))
(assert (not (= (f3 f4 (f5 f6 0)) f7)))
(assert (let ((?v_0 1.0)) (= (f8 f9 ?v_0) ?v_0)))
(assert (= (f10 f11 1) 1))
(assert (forall ((?v0 S4)) (= (= f7 ?v0) (= ?v0 f7))))
(assert (forall ((?v0 Real)) (let ((?v_0 1.0)) (= (= ?v_0 ?v0) (= ?v0 ?v_0)))))
(assert (forall ((?v0 Int)) (= (= 1 ?v0) (= ?v0 1))))
(assert (forall ((?v0 S3)) (= (f3 (f12 f13 (f3 f4 ?v0)) ?v0) f7)))
(assert (forall ((?v0 S3)) (not (= (f3 f4 ?v0) f14))))
(assert (= (f15 f16 0.0) f7))
(assert (not (= f17 f7)))
(assert (= (f18 f7 f19) f1))
(assert (= (f20 1.0 f21) f1))
(assert (= (f22 1 f23) f1))
(assert (not (= (f24 f7) f1)))
(assert (not (= (f25 1.0) f1)))
(assert (not (= (f26 1) f1)))
(assert (= (f27 f28 f7) f7))
(assert (= f7 (f15 (f29 f30 1.0) 0.0)))
(assert (forall ((?v0 Real) (?v1 Real)) (= (= (f15 (f29 f30 ?v0) ?v1) f7) (and (= ?v0 1.0) (= ?v1 0.0)))))
(assert (= (f26 0) f1))
(assert (= (f24 f14) f1))
(assert (= (f25 0.0) f1))
(assert (not (= f17 f14)))
(assert (= (f22 0 f23) f1))
(assert (= (f18 f14 f19) f1))
(assert (= (f20 0.0 f21) f1))
(assert (let ((?v_0 0.0)) (= f14 (f15 (f29 f30 ?v_0) ?v_0))))
(assert (= (f27 f28 f14) f14))
(assert (= (f10 f11 0) 0))
(assert (let ((?v_0 0.0)) (= (f8 f9 ?v_0) ?v_0)))
(assert (forall ((?v0 Int)) (= (= (f26 ?v0) f1) (= ?v0 0))))
(assert (forall ((?v0 S4)) (= (= (f24 ?v0) f1) (= ?v0 f14))))
(assert (forall ((?v0 Real)) (= (= (f25 ?v0) f1) (= ?v0 0.0))))
(assert (forall ((?v0 S4)) (= (f27 f28 (f27 f28 ?v0)) ?v0)))
(assert (forall ((?v0 Real) (?v1 Real)) (let ((?v_0 (f29 f30 ?v0))) (= (f27 f28 (f15 ?v_0 ?v1)) (f15 ?v_0 (- ?v1))))))
(assert (forall ((?v0 S4) (?v1 S3)) (= (f27 f28 (f3 (f12 f13 ?v0) ?v1)) (f3 (f12 f13 (f27 f28 ?v0)) ?v1))))
(assert (forall ((?v0 Int)) (= (= 0 ?v0) (= ?v0 0))))
(assert (forall ((?v0 S4)) (= (= f14 ?v0) (= ?v0 f14))))
(assert (forall ((?v0 Real)) (let ((?v_0 0.0)) (= (= ?v_0 ?v0) (= ?v0 ?v_0)))))
(assert (forall ((?v0 S4)) (= (= (f27 f28 ?v0) f14) (= ?v0 f14))))
(assert (forall ((?v0 Int)) (= (= (f10 f11 ?v0) 0) (= ?v0 0))))
(assert (forall ((?v0 Real)) (let ((?v_0 0.0)) (= (= (f8 f9 ?v0) ?v_0) (= ?v0 ?v_0)))))
(assert (forall ((?v0 S4) (?v1 S4)) (= (= (f27 f28 ?v0) (f27 f28 ?v1)) (= ?v0 ?v1))))
(assert (forall ((?v0 Real) (?v1 Real)) (let ((?v_0 0.0)) (= (= (f15 (f29 f30 ?v0) ?v1) f14) (and (= ?v0 ?v_0) (= ?v1 ?v_0))))))
(assert (forall ((?v0 Real) (?v1 Real)) (= (= (f15 (f29 f30 ?v0) ?v1) f17) (and (= ?v0 0.0) (= ?v1 1.0)))))
(assert (forall ((?v0 Real) (?v1 Real) (?v2 Real) (?v3 Real)) (= (= (f15 (f29 f30 ?v0) ?v1) (f15 (f29 f30 ?v2) ?v3)) (and (= ?v0 ?v2) (= ?v1 ?v3)))))
(assert (= f17 (f15 (f29 f30 0.0) 1.0)))
(assert (not (= f14 f7)))
(assert (not (= 0.0 1.0)))
(assert (not (= 0 1)))
(assert (not (= f7 f14)))
(assert (not (= 1.0 0.0)))
(assert (not (= 1 0)))
(assert (forall ((?v0 S3)) (= (f3 (f12 f13 f14) ?v0) (ite (= ?v0 (f5 f6 0)) f7 f14))))
(assert (forall ((?v0 S3)) (let ((?v_0 0.0)) (= (f31 (f32 f33 ?v_0) ?v0) (ite (= ?v0 (f5 f6 0)) 1.0 ?v_0)))))
(assert (forall ((?v0 S3)) (= (f34 (f35 f36 0) ?v0) (ite (= ?v0 (f5 f6 0)) 1 0))))
(assert (forall ((?v0 Real) (?v1 Real)) (= (f37 f38 (f15 (f29 f30 ?v0) ?v1)) (f5 f6 0))))
(assert (forall ((?v0 S4)) (= (f3 (f12 f13 ?v0) (f5 f6 0)) f7)))
(assert (forall ((?v0 Real)) (= (f31 (f32 f33 ?v0) (f5 f6 0)) 1.0)))
(assert (forall ((?v0 Int)) (= (f34 (f35 f36 ?v0) (f5 f6 0)) 1)))
(assert (forall ((?v0 S4)) (= (f3 (f12 f13 ?v0) (f5 f6 0)) f7)))
(assert (forall ((?v0 Real)) (= (f31 (f32 f33 ?v0) (f5 f6 0)) 1.0)))
(assert (forall ((?v0 Int)) (= (f34 (f35 f36 ?v0) (f5 f6 0)) 1)))
(assert (= (f3 (f12 f13 f7) (f5 f6 2)) f7))
(assert (let ((?v_0 1.0)) (= (f31 (f32 f33 ?v_0) (f5 f6 2)) ?v_0)))
(assert (= (f34 (f35 f36 1) (f5 f6 2)) 1))
(assert (forall ((?v0 S3)) (= (f3 (f12 f13 f7) ?v0) f7)))
(assert (forall ((?v0 S3)) (let ((?v_0 1.0)) (= (f31 (f32 f33 ?v_0) ?v0) ?v_0))))
(assert (forall ((?v0 S3)) (= (f34 (f35 f36 1) ?v0) 1)))
(assert (forall ((?v0 S3)) (= (f34 (f35 f36 0) (f5 f6 (+ (f34 f39 ?v0) 1))) 0)))
(assert (forall ((?v0 S3)) (= (f3 (f12 f13 f14) (f5 f6 (+ (f34 f39 ?v0) 1))) f14)))
(assert (forall ((?v0 S3)) (let ((?v_0 0.0)) (= (f31 (f32 f33 ?v_0) (f5 f6 (+ (f34 f39 ?v0) 1))) ?v_0))))
(assert (= (f34 (f35 f36 0) (f5 f6 2)) 0))
(assert (= (f3 (f12 f13 f14) (f5 f6 2)) f14))
(assert (let ((?v_0 0.0)) (= (f31 (f32 f33 ?v_0) (f5 f6 2)) ?v_0)))
(assert (forall ((?v0 Int) (?v1 S3)) (= (= (f34 (f35 f36 ?v0) ?v1) 0) (and (= ?v0 0) (not (= ?v1 (f5 f6 0)))))))
(assert (forall ((?v0 S4) (?v1 S3)) (= (= (f3 (f12 f13 ?v0) ?v1) f14) (and (= ?v0 f14) (not (= ?v1 (f5 f6 0)))))))
(assert (forall ((?v0 Real) (?v1 S3)) (let ((?v_0 0.0)) (= (= (f31 (f32 f33 ?v0) ?v1) ?v_0) (and (= ?v0 ?v_0) (not (= ?v1 (f5 f6 0))))))))
(assert (forall ((?v0 Real)) (let ((?v_0 (f5 f6 2))) (= (f31 (f32 f33 (f8 f9 ?v0)) ?v_0) (f31 (f32 f33 ?v0) ?v_0)))))
(assert (forall ((?v0 Int)) (let ((?v_0 (f5 f6 2))) (= (f34 (f35 f36 (f10 f11 ?v0)) ?v_0) (f34 (f35 f36 ?v0) ?v_0)))))
(assert (forall ((?v0 Int)) (= (f34 (f35 f36 ?v0) (f5 f6 1)) ?v0)))
(assert (forall ((?v0 Real)) (= (f31 (f32 f33 ?v0) (f5 f6 1)) ?v0)))
(assert (forall ((?v0 S4)) (= (f3 (f12 f13 ?v0) (f5 f6 1)) ?v0)))
(assert (forall ((?v0 Int)) (= (f34 (f35 f36 ?v0) (f5 f6 1)) ?v0)))
(assert (forall ((?v0 Real)) (= (f31 (f32 f33 ?v0) (f5 f6 1)) ?v0)))
(assert (forall ((?v0 S4)) (= (f3 (f12 f13 ?v0) (f5 f6 1)) ?v0)))
(assert (forall ((?v0 Real)) (let ((?v_0 (f31 (f32 f33 ?v0) (f5 f6 2)))) (= (f8 f9 ?v_0) ?v_0))))
(assert (forall ((?v0 Int)) (let ((?v_0 (f34 (f35 f36 ?v0) (f5 f6 2)))) (= (f10 f11 ?v_0) ?v_0))))
(assert (forall ((?v0 Real) (?v1 S3)) (= (f8 f9 (f31 (f32 f33 ?v0) ?v1)) (f31 (f32 f33 (f8 f9 ?v0)) ?v1))))
(assert (forall ((?v0 Int) (?v1 S3)) (= (f10 f11 (f34 (f35 f36 ?v0) ?v1)) (f34 (f35 f36 (f10 f11 ?v0)) ?v1))))
(assert (forall ((?v0 Int) (?v1 S3)) (=> (not (= ?v0 0)) (not (= (f34 (f35 f36 ?v0) ?v1) 0)))))
(assert (forall ((?v0 S4) (?v1 S3)) (=> (not (= ?v0 f14)) (not (= (f3 (f12 f13 ?v0) ?v1) f14)))))
(assert (forall ((?v0 Real) (?v1 S3)) (let ((?v_0 0.0)) (=> (not (= ?v0 ?v_0)) (not (= (f31 (f32 f33 ?v0) ?v1) ?v_0))))))
(assert (forall ((?v0 Int)) (= (= (f34 (f35 f36 ?v0) (f5 f6 2)) 0) (= ?v0 0))))
(assert (forall ((?v0 S4)) (= (= (f3 (f12 f13 ?v0) (f5 f6 2)) f14) (= ?v0 f14))))
(assert (forall ((?v0 Real)) (let ((?v_0 0.0)) (= (= (f31 (f32 f33 ?v0) (f5 f6 2)) ?v_0) (= ?v0 ?v_0)))))
(assert (= (f27 f40 f14) f7))
(assert (forall ((?v0 Real) (?v1 Real)) (= (f37 f41 (f15 (f29 f30 ?v0) ?v1)) (f5 f6 0))))
(assert (forall ((?v0 S4)) (=> (forall ((?v1 Real) (?v2 Real)) (=> (= ?v0 (f15 (f29 f30 ?v1) ?v2)) false)) false)))
(assert (forall ((?v0 S3) (?v1 S3) (?v2 Real)) (let ((?v_0 (f32 f33 ?v2))) (=> (<= (f34 f39 ?v0) (f34 f39 ?v1)) (=> (<= 0.0 ?v2) (=> (<= ?v2 1.0) (<= (f31 ?v_0 ?v1) (f31 ?v_0 ?v0))))))))
(assert (forall ((?v0 S3) (?v1 S3) (?v2 Int)) (let ((?v_0 (f35 f36 ?v2))) (=> (<= (f34 f39 ?v0) (f34 f39 ?v1)) (=> (<= 0 ?v2) (=> (<= ?v2 1) (<= (f34 ?v_0 ?v1) (f34 ?v_0 ?v0))))))))
(assert (forall ((?v0 S3) (?v1 S3) (?v2 Real)) (let ((?v_0 (f32 f33 ?v2))) (=> (< (f34 f39 ?v0) (f34 f39 ?v1)) (=> (< 0.0 ?v2) (=> (< ?v2 1.0) (< (f31 ?v_0 ?v1) (f31 ?v_0 ?v0))))))))
(assert (forall ((?v0 S3) (?v1 S3) (?v2 Int)) (let ((?v_0 (f35 f36 ?v2))) (=> (< (f34 f39 ?v0) (f34 f39 ?v1)) (=> (< 0 ?v2) (=> (< ?v2 1) (< (f34 ?v_0 ?v1) (f34 ?v_0 ?v0))))))))
(assert (forall ((?v0 S3)) (= (f5 f6 (f34 f39 ?v0)) ?v0)))
(assert (forall ((?v0 Int)) (=> (<= 0 ?v0) (= (f34 f39 (f5 f6 ?v0)) ?v0))))
(assert (forall ((?v0 Int)) (=> (< ?v0 0) (= (f34 f39 (f5 f6 ?v0)) 0))))
(check-sat)
