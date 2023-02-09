(assert (forall ((?a Int) (?b Int) (?c (Array Int (Array Int Real))) (?d (Array Int (Array Int Real)))) (distinct (select (?c ?b) ?a) (select (?d ?b) ?a))))
(check-sat)
