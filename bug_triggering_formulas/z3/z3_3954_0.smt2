(declare-fun h_ds1_filter () (Array Int (Array Int Real)))
(declare-fun pminus_ds1_filter () (Array Int (Array Int Real)))
(declare-fun h () (Array Int (Array Int Real)))
(declare-fun a () (Array Int (Array Int Real)))
(declare-fun trans ((Array Int (Array Int Real))) (Array Int (Array Int Real)))
(declare-fun inv ((Array Int (Array Int Real))) (Array Int (Array Int Real)))
(declare-fun b ((Array Int (Array Int Real)) (Array Int (Array Int Real))) (Array Int (Array Int Real)))
(declare-fun tptp_madd ((Array Int (Array Int Real)) (Array Int (Array Int Real))) (Array Int (Array Int Real)))
(assert (forall ((?c Int) (?d Int) (?i (Array Int (Array Int Real))) (?e Int)) (let ((?f (inv ?i))) (=> (>= ?d ?e) (= (select (?f ?c) ?d) (select (?f ?d) ?c))))))
(assert (= (and (forall ((?n Int) (?g Int)) (=> (<= ?n 5) (= (select (select h ?n) ?g) 0))) (forall ((?E_63 Int) (?j Int)) (= (or (= ?j 5)) (= (select (select pminus_ds1_filter ?E_63) ?j) (select (select pminus_ds1_filter ?j) ?E_63))))) (forall ((?k Int) (?l Int)) (let ((?f (trans h_ds1_filter))) (let ((?o (b pminus_ds1_filter (b ?f (inv (tptp_madd a (b h_ds1_filter (b pminus_ds1_filter ?f)))))))) (let ((?m (b ?o (b a (trans ?o))))) (= (= ?l 0) (= (select (?m ?k) ?l) 0))))))))
(check-sat)
