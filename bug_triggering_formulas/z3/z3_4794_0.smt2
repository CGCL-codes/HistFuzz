(declare-fun str12 () String)
(declare-fun str13 () String)
(assert (str.in_re str13 (re.inter (re.union (str.to_re "hcoyHvwKX") (str.to_re str13) (str.to_re str12)) (re.* (str.to_re "")))))
(check-sat)
