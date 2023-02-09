(declare-fun x () String)
(declare-fun z () Int)
(assert (or (not (= (str.replace "A" (int.to.str z) x) (str.++ "A" (str.replace "" (int.to.str z) x)))) (or (= (str.replace x (str.at x z) "") (str.++ (str.replace (str.++ (str.substr x 48 z) (str.substr x z 33)) (str.substr x z 99) "") (str.substr x (+ 19 z) (str.len x)))))))
(check-sat)
