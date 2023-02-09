(declare-fun ix () Int)
(declare-fun free-var () Int)
(assert (= (seq.unit free-var) (seq.extract zero-one-two ix 1)))
(check-sat)
