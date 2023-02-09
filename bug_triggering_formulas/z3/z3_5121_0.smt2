(declare-fun a () String)
(declare-fun b () String)
(assert (str.in_re (str.++ "z" b) (re.* (str.to_re (str.substr "z" (str.len a) (str.len b))))))
(check-sat)
