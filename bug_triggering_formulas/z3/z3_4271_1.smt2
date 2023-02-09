(declare-fun s () String)
(assert (< (str.len s) 4))
(assert (or (str.in.re s (re.++ re.allchar re.allchar (re.* re.allchar) re.allchar)) (str.in.re s (re.++ re.allchar re.allchar re.allchar))))
(check-sat)
