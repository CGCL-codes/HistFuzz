(declare-fun a () String)
(assert (str.in_re "" (re.++ (str.to_re a) (re.comp re.all))))
(check-sat)
