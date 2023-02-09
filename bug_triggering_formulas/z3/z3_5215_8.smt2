(declare-fun datai__first () Int)
(declare-fun a.select (Int Int) Int)
(assert (forall ((?I Int)) (<= datai__first (a.select 0 ?I))))
(check-sat)
