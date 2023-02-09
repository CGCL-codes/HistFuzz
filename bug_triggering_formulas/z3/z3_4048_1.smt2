(declare-const x (_ BitVec 30))
(assert (not (and (= x (_ bv0 30)) (= x (bvsmod x x)))))
(check-sat)
