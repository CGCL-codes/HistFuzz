(declare-sort S0 0)

(declare-const S0-0 S0)
(declare-const v6 Bool)
(assert (forall ((q0 (_ BitVec 10)) (q1 S0) (q2 S0) (q3 Bool)) (xor true (and q3 q3 q3 v6 q3 q3) (= q2 q1 S0-0))))
(check-sat)
