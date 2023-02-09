(declare-fun c () (Seq (Seq Int)))
(declare-fun b () (Seq (Seq Int)))
(assert (forall ((d (Seq (Seq Int)))) (forall ((f (Seq Int))) (exists ((a (Seq (Seq Int)))) (exists ((e (Seq Int))) (and (= a (seq.++ (seq.unit e) b)) (distinct (seq.++ (seq.unit f) d) a c)))))))
(check-sat)
