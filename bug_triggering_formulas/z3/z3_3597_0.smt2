(declare-fun a () Real)
(declare-fun b () Real)
(assert (not (=> (= a b) (< a (* (+ (+ (div 2.0 b))))) (< 0 a))))
(check-sat)
