(declare-const a (Array (_ BitVec 64) (_ BitVec 64)))
(declare-const b (_ BitVec 64))
(assert (distinct a (store a #x0000000000000000 #x0000000000000000)))
(check-sat)
