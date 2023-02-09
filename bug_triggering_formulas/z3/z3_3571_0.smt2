(declare-const i3 Int)
(declare-const i16 Int)
(assert (or (and (= i3 20) (<= i16 20))))
(check-sat)
