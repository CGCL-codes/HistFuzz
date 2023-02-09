(declare-const v10 Bool)
(assert (or true true true true (= v10 true true true true true true true true true true) true true true true true))
(check-sat)
