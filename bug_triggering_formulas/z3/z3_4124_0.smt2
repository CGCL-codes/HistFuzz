(declare-fun a () String)
(declare-fun b () String)
(declare-fun c () String)
(assert (xor (= (str.substr (str.++ a "abc" b) 5 (+ 1)) (str.++ a "a")) (distinct (str.substr (str.++ a "abc" b) (+ (str.len a) 1) (+ (str.len b) 3)) (str.++ "bc" b)) (distinct (str.substr (str.++ a b) 0 (+ (str.len c))) (str.substr (str.++ a b) 0 (+ (str.len a) (str.len b))))))
(check-sat)
