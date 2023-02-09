(declare-sort resource$type)

(declare-sort process$type)

(declare-fun valid$1 () (Array resource$type BOOL))
(assert (exists ((ref (Array process$type resource$type))) (forall ((destroy$r resource$type)) (exists ((null resource$type)) (forall ((valid (Array resource$type BOOL))) (not (or (= Truth (valid destroy$r)) (not (forall ((p process$type)) (= Truth (valid (ref p))))) (forall ((p process$type)) (or (= null (ref p)) (= Truth (select valid$1 (ref p))))))))))))
(check-sat)
