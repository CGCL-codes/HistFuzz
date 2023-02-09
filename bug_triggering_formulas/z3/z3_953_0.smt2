(declare-fun xs () (Seq Int))
(assert (= (seq.at xs 0) (seq.unit 42)))
(check-sat)
