(declare-const v0 Bool)
(declare-const v1 Bool)
(declare-const v2 Bool)
(declare-const v3 Bool)
(declare-const v4 Bool)
(declare-const v5 Bool)
(declare-const v6 Bool)
(declare-const v7 Bool)
(declare-const v8 Bool)
(declare-const v9 Bool)
(assert (and v8 v8 v7 v5 v6 v5))
(assert v9)
(declare-const v10 Bool)
(declare-const _29-0 (_ BitVec 29))
(assert v0)
(declare-const v11 Bool)
(declare-const _28-0 (_ BitVec 28))
(assert (xor v6 (distinct (_ bv982 10) (_ bv982 10) (_ bv982 10) (_ bv982 10) (_ bv982 10)) v8 v5 (distinct (bvxnor (_ bv982 10) (_ bv982 10)) (_ bv982 10) (bvnand (bvxnor (_ bv982 10) (_ bv982 10)) (_ bv982 10)) (bvxnor (_ bv982 10) (_ bv982 10)) (_ bv982 10)) (= v2 v4 v7 v6 v7 v4) (and v8 v8 v7 v5 v6 v5) v2 v4 (distinct (_ bv982 10) (_ bv982 10) (_ bv982 10) (_ bv982 10) (_ bv982 10)) v5))
(assert (= v2 v4 v7 v6 v7 v4))
(check-sat)
