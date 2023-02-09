(declare-const X Tuple)
(assert (= (_f X) (_ +zero 2 2)))
(check-sat)
