(declare-sort Type)

(declare-fun subtype (Type Type) Bool)
(declare-fun root-type () Type)
(declare-fun l1 () Bool)
(assert (and (forall ((x Type)) (subtype x x)) (forall ((x Type) (y Type)) (or (= x y) (not (subtype x y)) (not (subtype y x)))) (forall ((x Type) (y Type) (z Type)) (or (subtype x z) (not (subtype x y)) (not (subtype y z))))))
(assert (= l1 (forall ((x Type)) (subtype x root-type))))
(check-sat)
