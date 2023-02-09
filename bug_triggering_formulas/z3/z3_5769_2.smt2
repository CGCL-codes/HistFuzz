(define-sort FPN () Float64)

(define-sort FPN () Float64)

(declare-fun a () (_ FloatingPoint 2 6))
(declare-fun va () (_ FloatingPoint 2 6))
(declare-fun e () FPN)
(declare-fun x () FPN)
(declare-fun v () (_ FloatingPoint 2 6))
(push)
(assert (distinct (= x (fp (_ bv0 1) (_ bv0 11) #b1101110110011001100101010110111011011010011010001000)) (distinct (= e (fp (_ bv1 1) (_ bv0 11) (_ bv1 52))) (= (fp.div RTZ a va) v))))
(check-sat)
