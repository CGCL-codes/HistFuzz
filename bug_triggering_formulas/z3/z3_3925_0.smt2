(declare-const v2 Bool)
(declare-const v11 Bool)
(declare-const v16 Bool)
(declare-const r0 Real)
(assert (=> v2 v16))
(check-sat)
(push)
(assert (xor true v2 (<= (/ 0.94489 r0) r0 0.0 0.0 0.0) true true true true v11 (or true true true true true v2 true true true v11 true) (= (> r0 0.94489 0.94489 r0 r0) (not v11)) true))
(check-sat)
