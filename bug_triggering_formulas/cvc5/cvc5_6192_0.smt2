(declare-fun skoX () Real)
(assert (< 1.0 (/ 0 0 (+ (- 3) (* skoX skoX)))))
(check-sat)
