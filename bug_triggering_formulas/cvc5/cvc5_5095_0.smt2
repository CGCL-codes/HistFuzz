(declare-fun _substvar_27_ () Bool)
(declare-const _40-3 (_ BitVec 40))
(assert (exists ((q110 (_ BitVec 40)) (q111 (_ BitVec 7))) (= (_ bv0 40) _40-3 (_ bv0 40) (_ bv0 40))))
(push)
(assert _substvar_27_)
(check-sat)
