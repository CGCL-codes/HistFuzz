(declare-fun st1 () (Set Int))
(declare-const v8 Bool)
(declare-const i19 Int)
(assert (> (card (setminus st1 st1)) i19))
(assert v8)
(check-sat)
