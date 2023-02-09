(declare-fun a () Int)
(declare-fun b () (Array Int Real))
(assert (forall ((c (Array Int Int))) (not (< 0 (select b a)))))
(check-sat)
