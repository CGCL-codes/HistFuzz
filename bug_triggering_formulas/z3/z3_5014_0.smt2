(declare-fun a_or_b () String)
(assert (= 1 (str.len a_or_b)))
(assert (str.in.re a_or_b (re.union (str.to.re "a") (str.to.re "b"))))
(assert (< code 97))
(check-sat)
