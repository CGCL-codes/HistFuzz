(declare-sort a 0)

(declare-const u Int)
(declare-const e a)
(assert (f e u))
(check-sat)
