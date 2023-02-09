(declare-fun x () Int)
(assert (= (str.to_int (str.from_code x)) x))
(check-sat)
