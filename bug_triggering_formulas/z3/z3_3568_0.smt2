(declare-const i11 Int)
(declare-const i15 Int)
(assert (or (or (<= 44 i11) (= 39 41) (<= 982 50)) (= (< 44 i11) (distinct 43 50) (> 43 44) (= 41 i15))))
(check-sat)
