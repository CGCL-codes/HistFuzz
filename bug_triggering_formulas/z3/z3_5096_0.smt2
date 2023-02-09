(declare-fun x () String)
(assert (= 0 (str.to_int (str.++ (str.replace "" x "") (str.replace "" x (str.substr x 1 0))))))
(check-sat)
