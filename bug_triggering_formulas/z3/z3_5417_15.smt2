(declare-fun a (Bool Bool Int Int Int Int Int Int Int) Bool)
(assert (and (forall ((bc Bool) (bd Bool) (bf Int) (bm Int) (bn Int) (bk Int) (b Int) (e Int) (gd Bool)) (not (a bc bd bf b bm bn bk e b))) (forall ((b Int) (bc Bool) (bd Bool) (bk Int) (be Int) (bf Int) (bm Int) (bn Int)) (or (not (= bd false)) (a bc bd bf b bm bn bk be b)))))
(check-sat)
