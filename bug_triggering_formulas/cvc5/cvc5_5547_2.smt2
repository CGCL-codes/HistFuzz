(declare-fun a () (Seq Int))
(declare-fun b () (Seq Int))
(assert (= a (seq.++ b (seq.unit (+ (seq.len b) 1)))))
(check-sat)
