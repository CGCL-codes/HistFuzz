(declare-const v0 Bool)
(declare-const v1 Bool)
(declare-const v2 Bool)
(declare-const v3 Bool)
(declare-const v4 Bool)
(declare-const v5 Bool)
(declare-const v6 Bool)
(declare-const i0 Int)
(declare-const i3 Int)
(declare-const i4 Int)
(declare-const i5 Int)
(declare-const i6 Int)
(declare-const v7 Bool)
(declare-const v8 Bool)
(declare-const v9 Bool)
(declare-const v10 Bool)
(declare-const i7 Int)
(assert (not (exists ((q0 Int)) (not (<= (* i4 63 i6 44) q0)))))
(assert (or (forall ((q0 Int)) (not (distinct q0 (+ 815 63)))) (exists ((q0 Int)) v1)))
(assert (forall ((q1 Bool) (q2 Bool) (q3 Bool) (q4 Bool)) v2))
(assert (or (forall ((q1 Bool) (q2 Bool) (q3 Bool) (q4 Bool)) (not (xor q2 (<= 815 i4) (> 44 (* i4 63 i6 44))))) (exists ((q1 Bool) (q2 Bool) (q3 Bool) (q4 Bool)) v9)))
(assert (not (exists ((q5 Int) (q6 Int) (q7 Bool)) (=> (< (div i3 (* i4 63 i6 44)) q5) (distinct q7 q7)))))
(declare-const v11 Bool)
(assert (forall ((q8 Bool) (q9 Int) (q10 Bool) (q11 Bool)) v7))
(declare-const v12 Bool)
(assert (or v9 v9 v7))
(assert (or v8 v8 v9))
(assert (or v8 v7 v8))
(check-sat)
