(declare-const i1 Int)
(declare-const Str8 String)
(declare-const Str17 String)
(declare-const i3 Int)
(push)
(assert (>= 0 i3))
(assert (str.contains (str.substr Str17 0 i1) Str8))
(check-sat)
(check-sat)
