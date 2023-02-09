(declare-const Str3 String)
(declare-const Str10 String)
(assert (str.< (str.++ "" "fmlzve" Str10) Str3))
(check-sat)
