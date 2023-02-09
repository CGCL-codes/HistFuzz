(assert (forall ((a Bool)) (forall ((b (_ BitVec 2))) (forall ((c (_ BitVec 2))) (forall ((d (_ BitVec 2))) (exists ((e (_ BitVec 2))) (exists ((f (_ BitVec 2))) (exists ((g (_ BitVec 2))) (=> (= b (ite a c (_ bv0 2)) d) (= g (bvand e f)))))))))))
(check-sat)
