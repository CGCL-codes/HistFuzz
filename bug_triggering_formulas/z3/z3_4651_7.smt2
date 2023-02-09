(declare-const i9 Int)
(declare-const Str12 String)
(assert (>= (str.len (str.substr Str12 0 i9)) 60))
(check-sat)
