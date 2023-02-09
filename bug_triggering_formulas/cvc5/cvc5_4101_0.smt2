(declare-fun a () RoundingMode)
(assert (and (distinct a roundTowardNegative)))
(check-sat)
