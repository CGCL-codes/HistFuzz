(declare-fun f () a)
(assert (distinct f (b 0 f)))
(assert (= e f))
(check-sat)
