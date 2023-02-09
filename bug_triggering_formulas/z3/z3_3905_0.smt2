(assert (forall ((q42 (_ BitVec 27)) (q43 (_ BitVec 27)) (q44 (_ BitVec 27)) (q45 (_ BitVec 27)) (q46 (_ BitVec 27)) (q47 (_ BitVec 27)) (q48 (_ BitVec 27)) (q49 (_ BitVec 27)) (q50 (_ BitVec 27)) (q51 (_ BitVec 27)) (q52 (_ BitVec 10))) (=> (distinct ((_ rotate_right 5) q52) q52) (bvslt (_ bv0 27) q46))))
(assert (forall ((q53 (_ BitVec 27)) (q54 (_ BitVec 27)) (q55 (_ BitVec 27)) (q56 (_ BitVec 27)) (q57 (_ BitVec 27)) (q58 (_ BitVec 27)) (q59 (_ BitVec 27)) (q60 Bool)) (=> (xor q60 q60 q60 q60 q60 q60) (distinct (_ bv0 27) (bvsrem (_ bv0 27) q56)))))
(check-sat)
