(declare-const Str1 String)
(declare-const Str11 String)
(assert (str.< (str.++ "" "" "nsvskw" Str1) Str11))
(check-sat)
