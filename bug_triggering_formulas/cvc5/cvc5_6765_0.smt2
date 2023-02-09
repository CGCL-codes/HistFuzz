(declare-const x String)
(assert (str.in_re x (re.* (re.union (re.range x x) (str.to_re "ab")))))
(check-sat)
