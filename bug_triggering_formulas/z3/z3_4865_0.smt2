(declare-const x rec)
(assert ((_ is mk) ((_ update-field a) x 1)))
(check-sat)
