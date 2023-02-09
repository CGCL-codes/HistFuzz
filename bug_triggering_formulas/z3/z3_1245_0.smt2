(declare-fun k!7280 () (_ BitVec 32))
(declare-fun k!7270 () (_ BitVec 1))
(assert (let (($x61358 (= k!7280 (_ bv0 32)))) (let (($x61113 (= k!7270 (_ bv0 1)))) (let (($x61151 (not $x61113))) (and $x61151 $x61358 (not (and $x61151 $x61358)))))))
(check-sat)
