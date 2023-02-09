(declare-fun a () Int)
(declare-fun b () String)
(assert (str.in_re (str.++ b "A") (re.* (str.to_re (str.substr b 1 a)))))
(check-sat)
