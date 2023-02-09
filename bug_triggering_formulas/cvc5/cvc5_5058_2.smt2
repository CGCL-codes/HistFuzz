(declare-sort S 0)

(declare-const a (Array Bool Real))
(declare-const b (Array (Array Bool Real) S))
(assert (distinct (select b a) (select b (store a true 1))))
(check-sat)
