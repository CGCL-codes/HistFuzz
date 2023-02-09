(assert (forall ((V Float16)) (= ((_ to_fp 5 11) RTN 65535.0 0) (fp (_ bv0 1) (_ bv0 5) (_ bv0 10)))))
(check-sat)
