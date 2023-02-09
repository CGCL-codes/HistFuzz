(declare-const x Int)
(assert (seq.contains (seq.unit 1) (seq.unit x)))
(check-sat)
