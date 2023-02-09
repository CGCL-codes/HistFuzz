(declare-fun a () String)
(assert (xor (str.in_re a (re.* (re.union (str.to_re "A") (str.to_re a)))) (str.in_re a (re.* (re.comp re.none)))))
(check-sat)
