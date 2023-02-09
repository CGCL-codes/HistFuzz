(declare-fun a () Bool)
(assert (forall ((b Int) (c Int) (d Int) (g Int)) (let (($e (and (>= d c) (not (<= c g))))($f (or a (= 5 b)))) (let (($d (or (not $f) (= d g)))) (not (and $d $e))))))
(check-sat)
