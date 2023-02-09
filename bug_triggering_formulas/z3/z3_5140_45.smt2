(declare-const a String)
(assert (str.in_re a (re.* (str.to_re (str.from_int (str.len a))))))
(check-sat)
