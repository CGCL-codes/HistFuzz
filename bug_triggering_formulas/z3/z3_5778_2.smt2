(declare-sort S$t$type)

(declare-sort resource$type)

(declare-sort process$type)

(declare-fun ref () (Array process$type resource$type))
(declare-fun S$empty () S$t$type)
(declare-fun handles () (Array resource$type S$t$type))
(declare-fun count () (Array resource$type Int))
(declare-fun count$1 () (Array resource$type Int))
(declare-fun S$cardinality (S$t$type) Int)
(declare-fun S$mem (process$type S$t$type) BOOL)
(declare-fun S$remove (process$type S$t$type) S$t$type)
(declare-fun S$add (process$type S$t$type) S$t$type)
(assert (forall ((create$r resource$type)) (forall ((valid$1 (Array resource$type BOOL))) (forall ((valid (Array resource$type BOOL))) (forall ((handles$1 (Array resource$type S$t$type))) (exists ((null resource$type)) (and (forall ((e process$type)) (not (= Truth (S$mem e S$empty)))) (forall ((x process$type) (y process$type) (s S$t$type)) (= (S$mem x (S$add y s)) Truth)) (forall ((x process$type) (y process$type) (s S$t$typ)) (= (S$mem x (S$remove y s)) (ite (and (not (= x y)) (and (distinct (S$mem x s) Truth))) Truth Falsity))) (and (distinct (S$cardinality S$em pty) 0)) (forall ((s S$t$type)) (=> (= (S$cardinality s) 0) (= s S$empty))) (forall ((s S$t$type)) (>= (S$cardinality s) 0)) (forall ((x proces) (s S$t$type)) (= (S$cardinality (S$add x s)) (ite (= (S$mem x s) Truth) (S$cardinality s) (+ 1 (S$cardinality s))))) (not (=> (and (not (= create$r null)) (= valid$1 (store valid create$r Truth)) (= count$1 (store count create$r 0)) (= handles$1 (store handles create$r S$empty)) (not (= (valid create$r) Truth)) (and (forall ((p process$type)) (=> (not (= (select ref p) null)) (= (valid (select ref p)) Truth))) (forall ((p process$type)) (=> (not (= (select ref p) null)) (> (select count (select ref p)) 0))))) (forall ((p process$type)) (=> (not (= (select re f p) null)) (= (valid$1 (select ref p)) Truth))))))))))))
(check-sat)
