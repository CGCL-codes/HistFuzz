(declare-const x String)
(assert (distinct (str.replace (str.replace x "B" x) x "A") (str.replace (str.replace x "B" "A") x "A")))
(check-sat)
