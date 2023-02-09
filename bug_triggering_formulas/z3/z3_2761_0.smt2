(declare-fun ty_%a () (_ BitVec 2))
(declare-fun undef!1 () (_ FloatingPoint 8 24))
(assert (and (forall ((undef!0 (_ FloatingPoint 8 24))) (let ((a!1 (fp.isNaN (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (fp.to_ieee_bv undef!0)) (_ +zero 8 24))))(a!2 (= (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (fp.to_ieee_bv undef!0)) (_ +zero 8 24)) (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (fp.to_ieee_bv undef!1)) (_ +zero 8 24))))) (not (or a!1 a!2)))) (= ty_%a #b01)))
(check-sat)
