(assert (forall ((a Real)) (exists ((b Real)) (forall ((c Real)) (exists ((|| Real)) (forall ((d Real)) (exists ((e Real)) (forall ((s Real)) (exists ((f Real)) (let ((g 0)(h 0)(i 0)(j c)) (let ((k (<= j i))(l s)(z d)(w f)) (let ((m w)(n 0)) (let ((o (<= a n))) (let ((x (or o (<= m z)))(p ||)(q e)(r (<= b g))) (or r (<= q p) x (<= l h) k)))))))))))))))
(assert (exists ((y Real)) (forall ((t Real)) (exists ((u Real)) (let ((v u)) (or (and (< u 0) (or (= y 0) (= v 0))) (<= t 0)))))))
(check-sat)
