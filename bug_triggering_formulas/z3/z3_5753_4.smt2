(declare-fun fp () Float32)
(assert (or true (= ((_ to_fp 8 24) roundNearestTiesToEven (/ 9 10)) (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))))
(assert (fp.eq fp ((_ to_fp 8 24) roundNearestTiesToEven (/ 8109701 2097152))))
(check-sat)
