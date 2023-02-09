(declare-sort data$type)

(declare-sort node$type)

(declare-fun shrset () (Array node$type BOOL))
(assert (exists ((auxdata$1 data$type)) (exists ((store_data$i node$type)) (exists ((cache (Array node$type cache$type))) (forall ((store_data$d data$type)) (exists ((cache$1 (Array node$type cache$type))) (and (= auxdata$1 store_data$d) (forall ((n node$type)) (= Truth (select shrset n))) (= cache$1 (store cache store_data$i (c_cache$type (c_state (cache store_data$i)) store_data$d))) (not (forall ((n node$type)) (= invalid (c_state (cache$1 n))))))))))))
(check-sat)
