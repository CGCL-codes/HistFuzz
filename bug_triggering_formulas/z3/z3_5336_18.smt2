(assert (exists ((s (_ BitVec 5))) (forall ((t (_ BitVec 5))) (not (= (bvnand s t) (bvor s (bvneg t)))))))
(check-sat)
