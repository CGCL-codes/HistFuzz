(declare-fun int1 () Int)
(declare-fun strInt1 () String)
(assert (= int1 (IntFromString strInt1)))
(assert (ValidIntString strInt1))
(check-sat)
(declare-fun int2 () Int)
(declare-fun strInt2 () String)
(assert (= strInt2 (IntToString int2)))
(assert (ValidIntString strInt2))
(check-sat)
(declare-fun strInt () String)
(assert (= 0 (str.to.int strInt)))
(check-sat)
