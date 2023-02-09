(declare-const i3 Int)
(declare-const Str18 String)
(assert (str.suffixof (str.++ "" "" "" (int.to.str (- 76 76 7 0 i3))) (str.++ Str18 Str18 "" "")))
(check-sat)
