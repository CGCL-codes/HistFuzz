(assert (or (exists ((M Bool) (V (_ BitVec 2)) (S (_ BitVec 2))) (distinct (ite M V (_ bv0 2)) (ite M (_ bv0 2) (_ bv1 2))))))
(check-sat)
