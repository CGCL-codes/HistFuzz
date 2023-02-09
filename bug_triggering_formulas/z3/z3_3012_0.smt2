(declare-fun a () String)
(declare-fun b () Int)
(assert (let ((a!1 (distinct (str.replace "A" (int.to.str b) a) (str.++ "A" (str.replace "" (int.to.str b) a))))(a!2 (str.++ (str.replace (str.++ (str.substr a 5 b) (str.substr a b 8)) (str.substr a b 9) "") (str.substr a (- b) (str.len a))))) (or a!1 (= (str.replace a (str.at a b) "") a!2))))
(check-sat)
