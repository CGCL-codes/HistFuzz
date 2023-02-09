(declare-const x String)
(declare-const n Int)
(assert (not (= (str.replace x "0" "") (str.replace x (int.to.str n) ""))))
(check-sat)
