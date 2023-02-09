(declare-sort S$t$type)

(declare-sort resource$type)

(declare-sort process$type)

(declare-fun null () resource$type)
(declare-fun S$mem (process$type S$t$type) BOOL)
(assert (exists ((create$r resource$type)) (exists ((handles (Array resource$type S$t$type))) (exists ((ref (Array process$type resource$type))) (or (= create$r null) (exists ((p process$type) (r resource$type)) (or (= r (ref p)) (= Truth (S$mem p (handles r))))))))))
(check-sat)
