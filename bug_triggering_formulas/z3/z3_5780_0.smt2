(declare-sort Type)

(declare-fun subtype (Type Type) Bool)
(declare-fun root-type () Type)
(assert (and (forall ((x Type)) (subtype x x)) (forall ((x Type)) (subtype root-type x)) (forall ((x Type) (y Type)) (or (= x y) (not (subtype x y)) (not (subtype y x)))) (forall ((x Type) (y Type) (z Type)) (or (subtype x z) (not (subtype x y)) (not (subtype y z))))))
(check-sat)
