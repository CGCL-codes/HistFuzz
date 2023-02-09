(declare-fun _substvar_30_ () Bool)
(assert (not (forall ((q0 (Array (_ BitVec 1) (_ BitVec 16))) (q1 (Array (_ BitVec 1) (_ BitVec 16)))) (not (distinct q0 q1)))))
(assert (not _substvar_30_))
(check-sat)
