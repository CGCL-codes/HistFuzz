(define-sort Set (T) (Array T Bool))

(declare-const set Value)
(declare-const elem Value)
(assert (is-VSet set))
(assert (select (set-value set) elem))
(check-sat)
