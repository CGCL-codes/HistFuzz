(declare-fun str1 () String)
(declare-fun str9 () String)
(declare-fun str13 () String)
(push)
(assert (str.in_re str9 (str.to_re str1)))
(assert (= (str.++ str13 str13) str1))
(check-sat)
