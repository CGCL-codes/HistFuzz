(declare-fun g () b)
(declare-fun h () b)
(declare-fun i () b)
(assert (or (and (or (or true (and ((_ is cons) (ite ((_ is cons) h) (cdr h) e)))) (distinct (ite ((_ is f) (f g)) (children (f g)) e) i)))))
(check-sat)
