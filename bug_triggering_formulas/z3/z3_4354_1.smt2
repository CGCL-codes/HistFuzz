(declare-const Str10 String)
(declare-const Str13 String)
(declare-const Str15 String)
(assert (str.contains Str15 (str.++ Str10 Str13 "gdtkeq" "")))
(check-sat)
