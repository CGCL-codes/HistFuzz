(declare-sort data$type)

(declare-sort node$type)

(declare-fun chan2$1 () (Array node$type msg$type))
(declare-fun invset () (Array node$type BOOL))
(declare-fun invset$1 () (Array node$type BOOL))
(declare-fun exgntd () BOOL)
(assert (forall ((curcmd msg_cmd$type)) (exists ((send_inv$i node$type)) (exists ((shrset (Array node$type BOOL))) (exists ((chan2 (Array node$type msg$type))) (not (=> (and (= Truth (select invset send_inv$i)) (= empty (m_cmd (chan2 send_inv$i)))) (not (= (and (= curcmd reqs) (= exgntd Truth)) (=> (and (= invset$1 (store invset send_inv$i Falsity)) (= chan2$1 (store chan2 send_inv$i (c_msg$type inv (m_data (chan2 send_inv$i)))))) (forall ((n node$type)) (or (not (= Truth (shrset n))) (= inv (m_cmd (select chan2$1 n)))))))))))))))
(check-sat)
