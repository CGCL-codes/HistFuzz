(declare-const a (Array (_ BitVec 64) (_ BitVec 64)))
(declare-const b (_ BitVec 64))
(assert (= (store (store a b b) (select a b) (select a b)) (store (store a b #x1111111111111111) #x1111111111111111 (bvudiv b #x1111111111111111))))
(check-sat)
