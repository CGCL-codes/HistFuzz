(declare-const Str4 String)
(declare-const Str13 String)
(declare-const Str17 String)
(declare-const i10 Int)
(assert (or false false (= (str.++ Str13 Str4) (str.++ Str4 "" (int.to.str i10) Str13) Str17 "")))
(check-sat)
