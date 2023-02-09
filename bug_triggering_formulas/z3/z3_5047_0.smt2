(declare-fun in1 () String)
(declare-fun in0 () String)
(assert (not (= (ite (= (ite (= (str.len in0) 0) (ite (= (str.len in0) 0) 1 0) 0) (ite (and (and (and (not (not (= (ite (= (str.len in1) 1) 1 0) 0))) (not (not (= (ite (= (str.len in0) 0) 1 0) 0)))) (not (= (ite (= (str.len in0) 1) 1 0) (ite (= (str.len in0) 0) 1 0)))) (not (not (and (not (not (= (ite (= (str.len in1) 1) 1 0) 0))) (not (not (= (ite (= (str.len in1) 0) 1 0) 0))))))) 1 0)) 1 0) 0)))
(check-sat)
