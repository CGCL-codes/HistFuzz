(declare-fun i3 () Int)
(declare-fun i7 () Int)
(declare-fun i11 () Int)
(declare-fun i14 () Int)
(check-sat)
(declare-fun v10 () Bool)
(assert (<= i3 i11))
(push)
(assert (or v10 (= v10 true (= 0 i14 93 i7 i14 i14) true (forall ((q13 Int) (q14 Bool) (q15 Bool) (q16 Bool) (q17 Bool) (q18 Bool) (q19 Bool)) q16) v10 true true) v10))
(check-sat)
