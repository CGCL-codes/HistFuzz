(declare-fun _substvar_329_ () Bool)
(declare-fun _substvar_331_ () Bool)
(declare-const v1 Bool)
(declare-const v2 Bool)
(declare-const v3 Bool)
(declare-const v5 Bool)
(declare-const v7 Bool)
(declare-const v12 Bool)
(assert (xor true true v7 false (=> v5 (and v2 v3 (xor v2 v3 v5 v7 v1 true false true))) v3 true v2 false))
(assert (or (xor true true v7 false (=> v5 (and v2 v3 (xor v2 v3 v5 v7 v1 true false true))) v3 true v2 false) v1))
(assert (or (=> v5 _substvar_331_) _substvar_329_))
(assert (or false (and (=> v12 v3) (xor v2 v3 v5 v7 v1 true false true) v5 v3) false))
(assert (or (and v5 (and v2 v3 (xor v2 v3 v5 v7 v1 true false true)) v3) (and true true v2 v3 (xor v2 v3 v5 v7 v1 true false true) true)))
(assert (or (and true true v2 v3 (xor v2 v3 v5 v7 v1 true false true) true) (=> v5 false)))
(assert v1)
(check-sat)
