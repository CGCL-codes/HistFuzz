(declare-const e b)
(assert ((_ is d) ((_ update-field a) e 1)))
(check-sat)
