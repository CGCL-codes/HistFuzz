(declare-const Str16 String)
(assert (>= (str.len (str.substr Str16 0 14)) 446))
(check-sat)
