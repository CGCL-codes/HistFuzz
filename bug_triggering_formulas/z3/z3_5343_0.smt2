(declare-fun ar_7 () String)
(assert (str.in_re ar_7 (re.++ (str.to_re ar_7) ((_ re.loop 1) (re.range "" "")))))
(check-sat)
