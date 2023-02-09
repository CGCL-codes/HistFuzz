(assert (forall ((a String)) (forall ((b String)) (str.in_re a (re.++ re.allchar (str.to_re b))))))
(check-sat)
