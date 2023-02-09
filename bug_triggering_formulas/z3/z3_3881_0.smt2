(assert (forall ((q56 (_ BitVec 9)) (q57 (_ BitVec 24))) (=> (= q57 q57) (bvult q56 (bvxnor (bvor q56 q56) (bvor q56 q56))))))
(assert (forall ((q58 (_ BitVec 9)) (q59 (_ BitVec 9)) (q60 (_ BitVec 9)) (q61 (_ BitVec 9)) (q62 (_ BitVec 9)) (q63 (_ BitVec 9)) (q64 (_ BitVec 9)) (q65 (_ BitVec 9)) (q66 (_ BitVec 9)) (q67 (_ BitVec 9)) (q68 (_ BitVec 9)) (q69 (_ BitVec 9)) (q70 Bool)) (=> (distinct q65 q66) (xor q70 q70 q70 q70 q70 q70))))
(check-sat)
