(declare-const i9 Int)
(assert (>= (str.len (int.to.str i9)) 285))
(check-sat)
