(declare-sort c 0)

(declare-sort p 0)

(declare-fun m (j) c)
(declare-fun q (p d a) Bool)
(declare-fun v (d Int) p)
(declare-const w Int)
(declare-const aa Bool)
(declare-const n Int)
(declare-const x h)
(assert (forall ((t d) (u a)) (distinct (q (v s n) t u) (= 0 (g u)))))
(check-sat)
