(declare-fun _substvar_18_ () Bool)
(declare-const v1 Bool)
(declare-const v2 Bool)
(declare-const v4 Bool)
(declare-const v6 Bool)
(declare-const v7 Bool)
(declare-const v9 Bool)
(declare-const v13 Bool)
(declare-const v14 Bool)
(declare-const v15 Bool)
(declare-const v16 Bool)
(declare-const v17 Bool)
(assert v2)
(push)
(push)
(push)
(declare-const v19 Bool)
(declare-const v20 Bool)
(declare-const v21 Bool)
(declare-const v24 Bool)
(push)
(pop)
(assert v19)
(assert (= v24 _substvar_18_ v21 v1 (xor v20 v2 (xor v15 v15 v13 v7 v16 v7 v6 v4 v14 v2 v13) v19) true))
(check-sat)
(pop)
(pop)
(declare-const v31 Bool)
(assert v14)
(assert (= v31 (not v9) v7 v15 (=> v6 v15) (xor v15 v15 v13 v7 v16 v7 v6 v4 v14 v2 v13)))
(push)
(assert v6)
(assert v17)
(check-sat)
