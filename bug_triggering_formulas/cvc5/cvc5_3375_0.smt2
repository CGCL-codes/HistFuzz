(declare-const a String)
(declare-const b String)
(declare-const c String)
(declare-const d String)
(declare-const f String)
(declare-const e String)
(assert (= (str.++ (str.substr a 0 (str.len b)) c) (str.++ d f)))
(assert (> (str.len b) (str.to.int d)))
(assert (= 2 (str.len f)))
(assert (>= (str.len (str.replace a b (str.at a 0))) 14))
(assert (not (str.in.re e (re.++ (re.union (re.++ (re.++ (re.opt (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "") (str.to.re ""))) (re.range "0" "9"))) (re.++ (re.range "0" "9") (re.range "0" "4"))) (re.union (re.++ (re.++ (re.opt (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "") (str.to.re ""))) (re.range "0" "9"))) (re.++ (re.range "0" "9") (re.range "0" "4"))) (re.++ (re.++ (re.union (re.union (re.++ (re.++ (re.opt (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "") (str.to.re ""))) (re.range "0" "9"))) (re.++ (re.range "0" "9") (re.range "0" "4"))) (re.++ (re.++ (re.union (re.union (re.++ (re.union (re.++ (re.++ (re.opt (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "") (str.to.re ""))) (re.range "0" "9"))) (re.++ (re.range "0" "9") (re.range "0" "4"))) (re.range "0" "5")) (re.union (str.to.re "") (str.to.re ""))) (re.++ (str.to.re "") (str.to.re ""))) (re.++ (str.to.re "") (str.to.re ""))) (re.range "0" "5")) (str.to.re ""))) (re.++ (str.to.re "") (str.to.re ""))) (re.range "0" "5")) (str.to.re "")))) (re.++ (str.to.re "") (re.range "0" "5"))))))
(check-sat)
