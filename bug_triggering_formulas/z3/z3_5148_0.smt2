(declare-const a Int)
(assert (> a 0))
(assert (<= a 63))
(declare-const b Int)
(assert (> b 0))
(assert (<= b 63))
(declare-const c Int)
(assert (> c 0))
(assert (<= c 63))
(declare-const d Int)
(assert (> d 0))
(assert (<= d 63))
(assert (= 63 (+ a b c d)))
(check-sat)
