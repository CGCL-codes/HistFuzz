(declare-fun i4 () Int)
(declare-fun i7 () Int)
(declare-fun str5 () String)
(assert (xor (= (str.from_int 18) (str.++ str5 (str.from_int (* i4 i7)))) (= (str.from_int i4) (str.++ (str.from_int (* i7 18)) (str.from_int 0)))))
(assert (not (= i7 0)))
(check-sat)
