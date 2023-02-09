(declare-const Str10 String)
(assert (= false false (str.< "" Str10) false false false))
(check-sat)
