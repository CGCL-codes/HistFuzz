(assert (forall ((e (Seq a))) (seq.nth (seq.extract (seq.++ (seq.unit false) (seq.unit false)) 1 (seq.len (ite (= 0 (seq.len e)) seq.empty (seq.unit false)))) 0)))
(check-sat)
