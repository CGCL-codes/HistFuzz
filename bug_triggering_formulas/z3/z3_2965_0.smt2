(declare-fun d () (_ BitVec 4))
(assert (let ((a!6 (ite (and (= d #x0) true) true (and (= d #x0) true)))) (and a!6 a!6)))
(check-sat)
