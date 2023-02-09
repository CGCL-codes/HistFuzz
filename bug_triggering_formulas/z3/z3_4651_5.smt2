(declare-fun _substvar_12_ () Int)
(declare-const Str4 String)
(assert (>= (str.len (str.substr Str4 0 _substvar_12_)) 9))
(check-sat)
