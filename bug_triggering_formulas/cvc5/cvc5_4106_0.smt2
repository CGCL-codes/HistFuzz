(declare-sort a 0)                                                              

(declare-sort e 0)                                                              

(declare-fun b (e Int) a)
(declare-fun c () e)
(assert (forall ((?d a)) (= (b c 0) ?d)))
(check-sat)
