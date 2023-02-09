(declare-fun a () String)
(assert (str.in_re (str.++ "A" a) (re.* (re.comp (re.* (str.to_re a))))))
(assert (<= (str.len a) 1 (str.len a)))
(check-sat)
