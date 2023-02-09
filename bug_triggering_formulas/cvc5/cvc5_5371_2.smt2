(declare-sort s 0)

(declare-fun k (s s) Bool)
(declare-fun r (s s) Bool)
(assert (= true (forall ((? s)) (or (not (k ? ?)) (not (r ? ?))))))
(check-sat)
