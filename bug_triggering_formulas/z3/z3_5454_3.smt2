(declare-fun symmetric ((Array Int (Array Int Real)) Int) Bool)
(assert (forall ((?n Int) (?a (Array Int (Array Int Real)))) (= (symmetric ?a ?n) (forall ((?i Int) (?j Int)) (or (< 1 ?j) (not (= ?i ?n)) (= (select (?a ?i) ?j) (select (?a ?j) ?i)))))))
(check-sat)
