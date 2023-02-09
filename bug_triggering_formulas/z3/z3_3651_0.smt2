(declare-sort a)  

(declare-sort a)  

(declare-fun b (a a) a)
(declare-fun c () a)
(assert (let ((?d (b c c))) (= c ?d)))
(assert (not (= (b (b c c) c) c)))
(declare-fun b (a a) a)
(declare-fun c () a)
(assert (let ((?d (b c c))) (= c ?d)))
(assert (not (= (b (b c c) c) c)))
(check-sat)
