(declare-fun TimerOk (Int) Bool)
(assert (forall (($TimerSeq Int)) (= (TimerOk $TimerSeq) (= $TimerSeq 0))))
(check-sat)
