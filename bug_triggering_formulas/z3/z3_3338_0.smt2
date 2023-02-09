(declare-fun a (Int Int Int) Int)
(declare-fun b () Int)
(assert (let ((c 0)) (let ((aa (a c b b))(d 0)) (let ((h (* 2 aa))) (let ((e (div 102 h c))(f 0)(m 0)(g b)(o h)(i 0)) (let ((j o)(k (~ aa))) (let ((l (= g m))(p (< 1 aa))(q (<= 5 i))(n (distinct j g))) (let ((ae (ite l d o))) (let ((af (ite p ae k))) (let ((ag (ite n f af))(ah (ite q b e))) (> ag ah)))))))))))
(check-sat)
