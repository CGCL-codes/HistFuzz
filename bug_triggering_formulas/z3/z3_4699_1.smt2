(declare-fun x () Int)
(assert (let (($x9 (< x 4))) (let (($x7 (> x 2))) (and $x7 $x9))))
(check-sat)
