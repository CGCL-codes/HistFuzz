(declare-sort S2 0)

(declare-sort S5 0)

(declare-sort S6 0)

(declare-sort S12 0)

(declare-sort S13 0)

(declare-sort S25 0)

(declare-sort S30 0)

(declare-fun _substvar_11_ () Int)
(declare-fun f7 (S5 Int) S2)
(declare-fun f8 () S5)
(declare-fun f9 (S6 S2) Int)
(declare-fun f10 () S6)
(declare-fun f21 (S12 S2) S13)
(declare-fun f49 (S25 S13) S12)
(declare-fun f62 (S30 Int) S6)
(declare-fun f108 () S25)
(declare-fun f119 () S30)
(declare-fun f137 () S12)
(assert (= (f9 (f62 f119 1) (f7 f8 2)) 1))
(assert (forall ((?v0 S2) (?v1 S2) (?v2 S2)) (let ((?v_0 (f9 f10 ?v0))) (=> (< 0 ?v_0) (= (f21 (f49 f108 (f21 f137 (f7 f8 (* ?v_0 _substvar_11_)))) (f7 f8 0)) (f21 (f49 f108 (f21 f137 ?v1)) ?v2))))))
(check-sat)
