(declare-fun x () String)
(declare-fun y () String)
(assert (or (not (str.contains (str.++ x "ab" y) (str.++ "b" (str.substr y 0 80)))) (not (str.contains (str.++ x "ab" y) (str.++ (str.substr x 5 (str.len x)) "a"))) (str.contains (str.++ x y) (str.++ x "a" y)) (str.contains (str.++ x y) (str.++ y x x y "a"))))
(check-sat)
