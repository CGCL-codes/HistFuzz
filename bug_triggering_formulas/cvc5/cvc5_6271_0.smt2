(declare-fun str7 () String)
(declare-fun str8 () String)
(assert (str.in_re str8 (re.++ re.allchar re.allchar (str.to_re str7))))
(check-sat)
