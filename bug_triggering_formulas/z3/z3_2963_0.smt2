(declare-fun a () (_ BitVec 1))
(declare-fun b ((_ BitVec 1)) Bool)
(assert (exists ((c (_ BitVec 1))) (distinct (= a c) (b c))))
(check-sat)
