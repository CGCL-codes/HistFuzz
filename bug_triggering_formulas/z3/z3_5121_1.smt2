(declare-fun a () String)
(declare-fun b () String)
(assert (str.in_re (str.++ "z" b) (re.* (str.to_re (str.at b (str.len a))))))
(check-sat)
