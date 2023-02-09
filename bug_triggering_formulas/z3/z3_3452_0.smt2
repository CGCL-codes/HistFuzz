(declare-fun s_5 (Int) Bool)
(declare-fun p () Int)
(assert (forall ((?r Int)) (let ((?v_4 (= ?r p))) (xor (s_5 ?r)))))
(check-sat)
