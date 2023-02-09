(declare-fun key1 () String)
(assert (or (or (and (or (and (not (and (= (ite (str.contains (str.substr key1 (* 461 449 988 733 (str.indexof key1 "C" 0) 1) (* 395 817 396 (str.len key1) (* 924 (str.indexof key1 "C" 0) 1))) "C") 1 0) 0))) (and (= (ite (str.contains key1 "C") 1 0) 0))) (and (or (= (ite (str.contains key1 "B") 1 0) 0)))) (or (or (= (ite (str.contains key1 "A") 1 0) 0)))) (< (- 517 (str.indexof key1 "C" 0) 1) 0)) (>= (* 458 (str.len key1) (+ 655 (str.indexof key1 "C" 0) 1)) 0)))
(check-sat)
