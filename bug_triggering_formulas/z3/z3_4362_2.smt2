(declare-const v2 Bool)
(declare-const Str0 String)
(declare-const Str3 String)
(declare-const Str9 String)
(declare-const Str14 String)
(declare-const Str16 String)
(declare-const Str19 String)
(declare-const i7 Int)
(declare-const i8 Int)
(assert (or (= false false false false false false false v2 false false false) (= Str19 "" "" Str0 Str14)))
(assert (or (= Str19 "" Str9 Str0 Str14) v2 (>= 630 i8)))
(assert (or (>= 630 i8) (= "" (str.++ Str3 Str16) Str9 (str.++ Str14 Str3)) (= Str19 "" Str9 Str0 Str14)))
(assert (> i7 0))
(check-sat)
