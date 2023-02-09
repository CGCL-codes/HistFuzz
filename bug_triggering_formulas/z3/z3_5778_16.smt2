(declare-fun v () (Array Int (Array Int Real)))
(declare-fun a () (Array Int (Array Int Real)))
(assert (or true (distinct a (store v 1 (store (select v 0) 0 0)) a)))
(check-sat)
