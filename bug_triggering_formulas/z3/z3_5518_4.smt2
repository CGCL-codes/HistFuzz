(define-sort Elt () Int)

(define-sort mySet () (Set Elt))

(declare-fun z3f69 (Int) mySet)
(declare-fun z3v140 () Int)
(declare-fun z3v141 () Int)
(declare-fun z3v151 () Int)
(declare-fun z3v152 () Int)
(assert (not (= (z3f69 z3v152) (z3f69 z3v141))))
(assert (= (z3f69 z3v151) (union (z3f69 z3v141) (z3f69 z3v140))))
(check-sat)
