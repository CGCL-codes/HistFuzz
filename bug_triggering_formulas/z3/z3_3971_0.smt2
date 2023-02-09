(declare-sort i)

(declare-fun e (i) a)
(assert (forall ((f i)) (ite ((_ is d) (e f)) true (ite ((_ is b) (e f)) (forall ((g i)) (= (e g) (c (e f)))) true))))
(assert (exists ((h a) (g i)) (= (e g) h)))
(check-sat)
