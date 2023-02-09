(declare-fun b () (_ BitVec 7))
(assert (and (and (<= (bv2nat b) 5))))
(check-sat)
