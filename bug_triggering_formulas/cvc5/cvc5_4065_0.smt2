(declare-sort S4 0)

(declare-fun _substvar_20_ () Bool)
(assert (forall ((q15 S4) (q16 (_ BitVec 20)) (q17 (_ BitVec 13))) (xor (= (_ bv0 13) (_ bv0 13) q17 (bvsrem (_ bv0 13) (_ bv0 13)) q17) _substvar_20_ true)))
(check-sat)
