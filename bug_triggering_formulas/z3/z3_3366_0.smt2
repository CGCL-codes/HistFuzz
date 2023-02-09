(declare-fun a () Real)
(assert (not (exists ((b Real)) (=> (and (and (or (and (and (or (or (and (and (and (and (or (and (and (and (distinct 0 (+ a 0))))))))))))))))) (or (or (<= 0.0 0)))))))
(check-sat)
