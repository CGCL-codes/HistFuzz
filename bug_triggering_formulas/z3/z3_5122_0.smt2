(declare-fun a () String)
(declare-fun b () String)
(declare-fun c () String)
(declare-fun var_1 () String)
(declare-fun var_2 () String)
(declare-fun var_4 () String)
(assert (str.in_re (str.++ (str.replace var_1 (str.++ var_2 var_4) var_1) var_4) (re.union (str.to_re (str.at c (+ (str.len (str.++ a var_4)) (- (str.len var_2)) 1))) (re.++ (str.to_re "b") (str.to_re (str.replace "a" c "b"))))))
(assert (str.suffixof var_1 c))
(assert (>= 0 (mod 0 (str.len (str.at (str.replace "a" c b) 0)))))
(check-sat)
