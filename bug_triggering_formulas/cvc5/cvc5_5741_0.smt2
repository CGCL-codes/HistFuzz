(declare-fun a ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun b () (_ BitVec 32))
(declare-fun c () (_ BitVec 1))
(declare-fun d () (_ BitVec 32))
(declare-fun e () (_ BitVec 32))
(declare-fun f () (_ BitVec 32))
(declare-fun g ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun h () (_ BitVec 32))
(declare-fun i () (_ BitVec 32))
(declare-fun j () (_ BitVec 1))
(declare-fun k () (_ BitVec 32))
(assert (= b (a d e)))
(assert (= f (g h i)))
(assert (distinct j (ite (= i k) (_ bv1 1) (_ bv0 1))))
(assert (= (ite (= i b) (_ bv1 1) (_ bv0 1)) j (ite (= c (_ bv0 1)) (_ bv1 1) (_ bv0 1))))
(check-sat)
