(declare-fun s () Int)
(assert (> 0 (bv2nat ((_ int2bv 1) s))))
(check-sat)
