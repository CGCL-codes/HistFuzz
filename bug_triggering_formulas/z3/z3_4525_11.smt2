(declare-fun _substvar_140_ () Bool)
(declare-fun _substvar_141_ () Bool)
(declare-fun _substvar_147_ () Bool)
(declare-fun _substvar_152_ () Bool)
(declare-fun _substvar_154_ () Bool)
(declare-fun _substvar_259_ () Bool)
(declare-fun _substvar_299_ () Bool)
(declare-const v2 Bool)
(declare-const v7 Bool)
(declare-const v9 Bool)
(declare-const Str0 String)
(declare-const Str10 String)
(declare-const Str11 String)
(declare-const Str15 String)
(assert (>= (str.len Str15) 91))
(declare-const v12 Bool)
(push)
(assert _substvar_299_)
(assert (or v7 _substvar_141_ _substvar_140_))
(assert _substvar_147_)
(assert _substvar_152_)
(assert _substvar_154_)
(assert (or v12 v9 _substvar_259_))
(assert (or (str.contains Str0 (str.replace Str10 Str15 Str11)) v12 v2))
(check-sat)
