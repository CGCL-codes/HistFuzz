(declare-fun a () String)
(assert (str.in_re a (re.+ (str.to_re (str.replace_re a (str.to_re a) "A")))))
(check-sat)
