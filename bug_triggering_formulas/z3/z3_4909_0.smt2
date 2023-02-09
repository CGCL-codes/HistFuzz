(assert (xor true true true true true true true))
(assert (or false false false false false false (xor true true true true true true true) false false))
(check-sat)
