(declare-const v8 Bool)
(declare-const v12 Bool)
(assert (xor true v12 true true true true true v8 v12 true))
(check-sat)
(check-sat)
