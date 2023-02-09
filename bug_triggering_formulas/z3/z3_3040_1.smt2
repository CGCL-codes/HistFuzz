(assert (let (($x42 (not false))) (let (($x45 (and (not $x42) $x42))) (and (not $x45) $x42))))
(check-sat)
