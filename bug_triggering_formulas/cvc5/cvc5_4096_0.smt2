(declare-fun b () (_ BitVec 7))
(assert (<= (bv2nat b) 5))
(check-sat)
