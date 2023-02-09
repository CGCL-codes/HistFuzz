(assert (= (_ bv0 10) (_ bv0 10) (bvurem (bvadd #b1010010000 #b1010010000) (_ bv0 10)) (_ bv0 10) #b1010010000))
(check-sat)
