(declare-fun t () (_ BitVec 2))
(declare-fun s () (_ BitVec 2))
(declare-fun l1 () Bool)
(assert (not (= (_ bv1 2) (ite (= (_ bv0 2) (bvurem (ite false t s) t)) (_ bv0 2) (ite false (_ bv1 2) (_ bv1 2))))))
(assert (= l1 (= (bvsmod_i (_ bv1 2) t) (ite false t (ite (= (_ bv0 2) (bvurem_i s t)) (_ bv0 2) (bvadd s (_ bv1 2)))))))
(check-sat)
