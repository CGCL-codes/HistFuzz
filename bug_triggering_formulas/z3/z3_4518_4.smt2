(declare-fun b () String)
(assert (not (str.contains b "A")))
(assert (<= 0 (str.indexof b "B") 0))
(check-sat)
