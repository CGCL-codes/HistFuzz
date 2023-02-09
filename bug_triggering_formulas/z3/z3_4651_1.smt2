(declare-const Str11 String)
(assert (str.in_re (str.++ "" "wyeuem" "" "mpzyyy" Str11) (re.opt (str.to_re Str11))))
(check-sat)
