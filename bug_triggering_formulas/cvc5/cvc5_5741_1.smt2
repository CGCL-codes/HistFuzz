(declare-const i (_ BitVec 1))
(declare-fun a ((_ BitVec 2) (_ BitVec 2)) (_ BitVec 2))
(declare-fun g ((_ BitVec 2) (_ BitVec 2)) (_ BitVec 2))
(assert (= (_ bv0 2) (g (_ bv0 2) ((_ zero_extend 1) i))))
(assert (not (= (_ bv0 2) (a (_ bv0 2) (_ bv0 2)))))
(check-sat)
