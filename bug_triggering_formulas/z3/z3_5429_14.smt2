(declare-fun a () (_ BitVec 8))
(declare-fun b () (_ BitVec 8))
(assert (forall ((x (_ BitVec 8))) (ite (distinct (forall ((x (_ BitVec 8))) (not (= (bvlshr x a) b))) (xor (forall ((x (_ BitVec 8))) (not (= (bvlshr x a) b))) (forall ((x (_ BitVec 8))) (not (= (bvlshr x a) b))))) (distinct (not (= (bvlshr x a) b)) (xor (forall ((x (_ BitVec 8))) (not (= (bvlshr x a) b))) (forall ((x (_ BitVec 8))) (not (= (bvlshr x a) b))))) (= (bvlshr x a) b))))
(check-sat)
