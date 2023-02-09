(declare-const arr (Array (_ BitVec 12) (Array (_ BitVec 12) (_ BitVec 24))))
(assert (bvsgt (_ bv0 72) ((_ repeat 3) (select (select arr (_ bv0 12)) #x14a))))
(check-sat)
