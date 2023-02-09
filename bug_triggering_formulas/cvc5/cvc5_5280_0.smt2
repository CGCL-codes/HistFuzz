(declare-fun v1 () ty0)
(assert (not ((_ is Emp) v1)))
(assert (= (v2 v1) (singleton v1)))
(check-sat)
