(declare-fun a () Int)
(assert (let ((a!1 ((_ int2bv 3) (bv2int (bvor ((_ int2bv 3) a)))))) (let ((a!2 (distinct (bv2int (bvand a!1 ((_ int2bv 3) 1))) 0))) (and a!2 (= ((_ extract 0 0) (bvand a!1)) #b0)))))
(check-sat)
