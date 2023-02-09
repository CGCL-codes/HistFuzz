(declare-sort A)

(declare-fun S (A) Bool)
(declare-fun b () Bool)
(assert (= (exists ((x A)) (forall ((N A)) (= (S N) (= N x)))) b))
(check-sat)
