(declare-fun a () Real)
(declare-fun b () Real)
(assert (not (exists ((c Real)) (= (= (+ (div (mod 5 (* c c)) a)) (/ 5 (* b b)) a) (<= b 5)))))
(check-sat)
