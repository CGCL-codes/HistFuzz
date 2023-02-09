(declare-const x Int)
(declare-fun e () Int)
(assert (forall ((t Int) (ex Int)) (or (= 0 (* e t)) (= ex (+ (* x x) (* x ex x))))))
(check-sat)
