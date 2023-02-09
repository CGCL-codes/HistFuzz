(declare-fun a () Int)
(assert (distinct (str.indexof "" "" a) 0))
(check-sat)
