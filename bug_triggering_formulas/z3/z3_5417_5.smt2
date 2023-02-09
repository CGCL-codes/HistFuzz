(declare-fun plus!207 (Nat!910 Nat!910) Nat!910)
(assert (forall ((x!205 Nat!910) (y!206 Nat!910)) (and (not (= y!206 (Succ!911 (plus!207 (x!912 x!205) y!206)))))))
(assert (forall ((x!210 Nat!910)) (or (not (= x!210 (plus!207 x!210 Zero!913))) (= (x!912 x!210) (plus!207 (x!912 x!210) Zero!913)))))
(check-sat)
