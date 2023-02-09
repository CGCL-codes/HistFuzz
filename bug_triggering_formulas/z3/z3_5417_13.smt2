(declare-sort worlds)

(declare-fun val (worlds worlds) Bool)
(declare-fun v!1 () worlds)
(declare-fun access (worlds worlds) Bool)
(assert (exists ((w!1 worlds)) (forall ((g worlds)) (and (access w!1 v!1) (forall ((w worlds)) (exists ((v worlds)) (and (val g v) (access w v)))) (forall ((x worlds) (y worlds) (z worlds)) (or (not (access x y)) (not (val x z)) (access y z)))))))
(check-sat)
