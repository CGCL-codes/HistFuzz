(assert (let (($x13 (and true true))) (let (($x15 (not (not $x13)))) (let (($x16 (not $x15))) (let (($x17 (not $x16))) (not (and $x16 (not (and (and $x17))))))))))
(assert (not (not (and true true))))
(check-sat)
