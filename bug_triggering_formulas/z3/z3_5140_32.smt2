(declare-fun num1 () String)
(declare-fun num2 () String)
(assert (ite (str.prefixof "-" (str.at num2 0)) false (not (= (- 1) (str.to_int (str.at num2 (- (str.len num2) 4)))))))
(assert (not (>= (ite (str.prefixof "-" (str.at num2 0)) 0 (str.to_int (str.at num2 (- (str.len num2) 3)))) 10)))
(assert (ite (str.prefixof "-" (str.at num2 (- (str.len num2) 3))) (> (str.len (str.at num2 0)) 1) (not (= (- 1) (str.to_int (str.at num2 0))))))
(assert (>= (- (str.len num2) 3) 0))
(assert (not (>= (ite (str.prefixof "-" (str.at num2 0)) 0 (str.to_int (str.at num2 (- (str.len num2) 2)))) 10)))
(assert (ite (str.prefixof "-" (str.at num2 (- 2))) true (not (= 0 (str.to_int (str.at num2 (- (str.len num2) 2)))))))
(assert (> 2 (str.len num1)))
(assert (< (ite (< (str.len num1) (str.len num2)) (str.len num1) (str.len num2)) 2))
(assert (>= (+ (ite (str.prefixof "-" (str.at num1 (- (str.len num1) 1))) (- (str.to_int (str.substr (str.at num1 0) 1 0))) (str.to_int (str.at num1 (- (str.len num1) 1)))) (ite (str.prefixof "-" (str.at num2 0)) 0 (str.to_int (str.at num2 (- (str.len num2)))))) 10))
(assert (ite (str.prefixof "-" (str.at num2 (- (str.len num2) 1))) (> (str.len (str.at num2 (- (str.len num2) 1))) 1) (not (= 0 (str.to_int (str.at num2 (- (str.len num2) 1)))))))
(assert (>= (ite (< (str.len num1) (str.len num2)) (str.len num1) (str.len num2)) 1))
(assert (ite (str.prefixof "-" num2) (and (not (= 0 (str.to_int (str.substr num2 1 (- (str.len num2) 1))))) (> (str.len num2) 1)) (not (= (- 1) (str.to_int num2)))))
(assert (not (= (str.len num2) 0)))
(assert (ite (str.prefixof "-" num1) (> (str.len num1) 1) (not (= (- 1) (str.to_int num1)))))
(assert (not (= (str.len num1) 0)))
(check-sat)
