(declare-fun a () Int)
(declare-const i1 Int)
(assert (> (mod 622 i1) (div 14 (* a 72))))
(check-sat)
