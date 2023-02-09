(declare-fun b () (_ BitVec 7))
(declare-fun a ((_ BitVec 12) (_ BitVec 6)) Bool)
(assert (let ((a!1 (a ((_ zero_extend 11) (ite (bvsle #b001010001 #b001010001) #b1 #b0)) ((_ sign_extend 5) (ite (bvsle #b001010001 #b001010001) #b1 #b0))))) (let ((a!2 (ite (or (bvuge ((_ sign_extend 2) b) #b001010001) true) a!1 (or (bvuge ((_ sign_extend 2) b) #b001010001) true)))) (and a!2 a!2))))
(check-sat)
