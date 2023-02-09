(declare-const i1 Int)
(declare-const Str14 String)
(assert (>= (str.len (str.substr Str14 0 i1)) 0))
(check-sat)
