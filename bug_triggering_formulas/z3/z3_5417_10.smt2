(declare-sort data$type)

(declare-sort node$type)

(declare-fun shrset () (Array node$type BOOL))
(declare-fun exgntd () BOOL)
(declare-fun send_invack$i () node$type)
(declare-fun cache () (Array node$type cache$type))
(declare-fun cache$1 () (Array node$type cache$type))
(declare-fun chan3$2 () (Array node$type msg$type))
(declare-fun l3 () Bool)
(assert (= (ite l3 (ite (or true) Truth Falsity) (ite (or (forall ((n node$type)) (or (not (= exgntd Truth)) (= (select shrset n) (ite (= n send_invack$i) Truth Falsity)))) (not (= chan3$2 (store chan3$2 send_invack$i (c_msg$type (m_cmd (select chan3$2 send_invack$i)) (c_data (select cache send_invack$i)))))) (= cache$1 (store cache$1 send_invack$i (c_cache$type invalid (c_data (select cache send_invack$i)))))) Truth Falsity)) Truth))
(check-sat)
