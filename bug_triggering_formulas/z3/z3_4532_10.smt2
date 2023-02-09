(declare-fun a () Real)
(declare-fun b () Real)
(assert (> (div 3 (to_int (* b (* a 2)))) (/ (mod 1 (to_int (* a 2))) (/ b 2)) a 2))
(check-sat)
