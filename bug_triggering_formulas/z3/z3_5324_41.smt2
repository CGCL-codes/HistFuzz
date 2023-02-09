(declare-fun a () Real)
(assert (and (= a 0) (or (< a 0) (>= a 0))))
(check-sat)
