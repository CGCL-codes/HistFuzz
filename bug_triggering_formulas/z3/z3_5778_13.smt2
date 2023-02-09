(declare-sort U)

(declare-sort R)

(declare-fun r () R)
(declare-fun s () R)
(declare-fun o () R)
(declare-fun m (R R) Bool)
(declare-fun a (U Real) Bool)
(assert (exists ((u U) (v Real)) (and (a u v) (a u 0.0))))
(assert (exists ((t R)) (and (m t s) (or (m s t) (m s s)))))
(assert (forall ((r R)) (m o r)))
(assert (m s r))
(assert (forall ((Z R)) (m Z r)))
(check-sat)
