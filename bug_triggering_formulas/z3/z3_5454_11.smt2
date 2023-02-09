(declare-sort Element)

(declare-sort Index)

(declare-fun e6 () Element)
(declare-fun i6 () Index)
(declare-fun i2 () Index)
(declare-fun i4 () Index)
(declare-fun e9 () Element)
(declare-fun i8 () Index)
(declare-fun i10 () Index)
(declare-fun a1 () (Array Index Element))
(assert (exists ((i3 Index)) (and (= i3 i8) (= i6 i10) (not (= (store (store (store a1 i4 e9) i2 e6) i10 e6) (store (store (store a1 i6 e9) i8 e6) i10 e9))))))
(check-sat)
