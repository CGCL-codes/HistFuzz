(declare-sort x31)

(declare-sort x6)

(declare-sort x30)

(declare-fun x63 () x30)
(declare-fun x70 () (Array x30 x45))
(declare-fun x68 () (Array x30 x45))
(declare-fun z3name!0 (x30) x29)
(declare-fun l51 () Bool)
(assert (= l51 (forall ((x73 x30)) (or (= x3 (x23 (z3name!0 x73))) (= x3 (x38 (select x70 x73)))))))
(assert (not (= x70 (store x70 x63 (x44 x4 (x39 (select x70 x63)) (x40 (select x70 x63)) (x41 (select x70 x63)) (x42 (select x70 x63)) (x43 (select x70 x63)))))))
(assert (not (= x70 x68)))
(check-sat)
