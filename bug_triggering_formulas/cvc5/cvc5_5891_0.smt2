(declare-fun i5 () Int)
(assert (not (seq.prefixof (seq.unit i5) (seq.unit 0))))
(check-sat)
