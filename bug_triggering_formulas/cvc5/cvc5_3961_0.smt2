(declare-sort S0 0)

(declare-sort S1 0)

(declare-const v16 Bool)
(declare-const v17 Bool)
(declare-const v18 Bool)
(declare-const r0 Real)
(declare-const r1 Real)
(declare-const r4 Real)
(declare-const r5 Real)
(declare-const r11 Real)
(declare-const v19 Bool)
(declare-const v20 Bool)
(declare-const r14 Real)
(declare-const r15 Real)
(assert (forall ((q0 S0) (q1 S0) (q2 Real) (q3 S0)) (not (distinct q0 q1 q3))))
(declare-const v21 Bool)
(declare-const v22 Bool)
(declare-const r16 Real)
(push)
(assert (or v22 v19 v16))
(check-sat)
