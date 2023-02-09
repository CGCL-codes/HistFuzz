(declare-fun a () Int)
(assert (and (= a (bv2nat ((_ int2bv 0) a)))))
(check-sat)
