(declare-fun a () T)
(assert (not ((_ is Emp) a)))
(assert (= (s a) (singleton a)))
(check-sat)
