(declare-fun a () Real)
(declare-fun b () (Array Int Real))
(declare-fun c () (Array Int Real))
(declare-fun g () (Array Int Real))
(assert (forall ((d Int)) (= (select b d) a)))
(assert (forall ((e Int)) (= (select c e) a)))
(assert (forall ((f Int)) (distinct (select g f) a)))
(check-sat)
