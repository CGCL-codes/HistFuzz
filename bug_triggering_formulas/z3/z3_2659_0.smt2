(declare-const sigma State)
(assert (or (not (or (= (f sigma) (f (tr sigma))) (= (tr (f sigma)) (f (tr sigma))) (= (tr (f sigma)) (f (tr (tr sigma)))))) (and (init sigma) (not (init (f sigma))))))
(assert (= 8 (seq.len (counter sigma))))
(assert (<= 0 (index sigma)))
(assert (< (index sigma) (seq.len (counter sigma))))
(declare-const f_sigma State)
(declare-const tr_sigma State)
(declare-const tr_tr_sigma State)
(assert (= f_sigma (f sigma)))
(assert (= tr_sigma (tr sigma)))
(assert (= tr_tr_sigma (tr sigma)))
(declare-const tr_f_sigma State)
(declare-const f_tr_sigma State)
(declare-const f_tr_tr_sigma State)
(assert (= tr_f_sigma (tr (f sigma))))
(assert (= f_tr_sigma (f (tr sigma))))
(assert (= f_tr_tr_sigma (f (tr (tr sigma)))))
(check-sat)
