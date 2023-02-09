(declare-fun s () String)
(assert (str.contains (str.substr (str.replace (str.substr s 0 (+ (str.indexof s "a" 0) 1)) "a" "b") 1 (str.len s)) "c"))
(check-sat)
