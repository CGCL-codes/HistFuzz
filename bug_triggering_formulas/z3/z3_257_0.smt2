(declare-const _lv_n_1_1 Int)
(declare-const _lv_n_19_b Bool)
(assert (= _lv_n_19_b (distinct (- (* _lv_n_1_1 _lv_n_1_1) 2) 0)))
(assert (not _lv_n_19_b))
(check-sat)
