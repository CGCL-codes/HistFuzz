(assert (exists ((x Int)) (not (and (= x (bv2int ((_ int2bv 1) x))) (not (= x (bv2int ((_ int2bv 1) x))))))))
(push)
(check-sat)
