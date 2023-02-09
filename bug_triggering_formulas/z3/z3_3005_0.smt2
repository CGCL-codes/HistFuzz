(declare-fun a () String)
(assert (let ((b (str.indexof (str.substr a 10 (- (str.len a) 0)) "*" 0))(c (str.substr a (+ 0 1) (- (str.len a) 0)))) (let ((d (str.substr (str.substr a 10 (- (str.len a) 0)) 0 (- b 0)))(i (distinct (ite (str.contains c "-") 1 0) 0))) (let ((e (str.substr d 1 (- (str.len d) 0)))(f (str.substr d 0 (- (+ (str.indexof d "-" 0) 1) 0)))) (let ((j (= (str.++ (str.substr d 0 0) e) "+"))(g (distinct (str.++ f e) "+"))) (let ((h (distinct (ite (not j) 1 0) 0))) (and (not h) (distinct (ite g 1 0) 0) (not i))))))))
(check-sat)
