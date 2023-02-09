(declare-fun b () Real)
(declare-fun c () Real)
(assert (distinct (and (>= c (* c c c c)) (< c (* c c c c))) (= (* b c) 0.0)))
(check-sat)
