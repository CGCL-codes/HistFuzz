(declare-const s1 String)
(declare-const s2 String)
(assert (str.in_re (str.++ s1 (str.from_int 0)) (re.inter (str.to_re s1) (str.to_re s2))))
(check-sat)
