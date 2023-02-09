(declare-fun v4 () Bool)
(declare-fun v62 () Bool)
(assert (and (or (or v62 v4) (or v62 v62 v4)) (or (and (not v4) (not v62)) (and v62 v4 (or v62 (or v62 v62 v4))))))
(check-sat)
