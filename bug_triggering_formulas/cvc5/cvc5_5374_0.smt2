(declare-fun str0 () String)
(declare-fun str4 () String)
(declare-fun str15 () String)
(push)
(assert (str.in_re (str.replace str0 "gpQrbuIlpcirZXw" "") (str.to_re "")))
(push)
(check-sat)
(pop)
(pop)
(assert (distinct str15 str4 (str.replace str0 "gpQrbuIlpcirZXw" "") ""))
(push)
(check-sat)
