(declare-const x Int)
(assert (str.contains (str.++ "some text" (int.to.str x)) "vector"))
(check-sat)
