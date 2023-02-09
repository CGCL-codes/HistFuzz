(declare-fun a () String)
(declare-fun b () String)
(assert (str.in_re a (re.union (str.to_re "z") (str.to_re (str.substr "z" 0 (str.len b))))))
(check-sat)
