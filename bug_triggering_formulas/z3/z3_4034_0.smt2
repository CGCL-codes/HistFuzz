(declare-const i7 Int)
(declare-const Str6 String)
(declare-const Str8 String)
(declare-const Str12 String)
(declare-const Str17 String)
(declare-const Str18 String)
(declare-const v10 Bool)
(declare-const v13 Bool)
(declare-const v14 Bool)
(assert (or v10 v14))
(assert (or v10 v13))
(assert (distinct Str12 Str18 (str.++ Str6 (int.to.str i7) Str8 Str17)))
(assert (distinct Str12 Str6))
(check-sat)
