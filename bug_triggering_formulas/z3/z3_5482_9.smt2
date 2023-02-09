(declare-sort Index 0)

(declare-sort Element 0)

(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i5 () Index)
(declare-fun i6 () Index)
(declare-fun i7 () Index)
(assert (let ((?v_0 (select a1 i3))) (let ((?v_1 (store (store a1 i3 ?v_0) i3 ?v_0))) (let ((?v_2 (store (store ?v_1 i5 (select ?v_1 i7)) i7 (select ?v_1 i5)))) (let ((?v_8 (select ?v_2 i6))(?v_9 (select ?v_2 i7))) (let ((?v_3 (store (store ?v_2 i6 ?v_9) i7 ?v_8))) (let ((?v_4 (store (store ?v_3 i5 (select ?v_3 i7)) i7 (select ?v_3 i5)))) (let ((?v_5 (store (store ?v_4 i0 (select ?v_4 i7)) i7 (select ?v_4 i0)))) (let ((?v_6 (store (store ?v_5 i4 (select ?v_5 i2)) i2 (select ?v_5 i4)))) (let ((?v_7 (store (store ?v_6 i5 (select ?v_6 i2)) i2 (select ?v_6 i5)))(?v_10 (store (store ?v_2 i7 ?v_8) i6 ?v_9))) (let ((?v_11 (store (store ?v_10 i7 (select ?v_10 i5)) i5 (select ?v_10 i7)))) (let ((?v_12 (store (store ?v_11 i7 (select ?v_11 i0)) i0 (select ?v_11 i7)))) (let ((?v_13 (store (store ?v_12 i2 (select ?v_12 i4)) i4 (select ?v_12 i2)))) (let ((?v_14 (store (store ?v_13 i2 (select ?v_13 i5)) i5 (select ?v_13 i2)))) (not (= (store (store ?v_7 i7 (select ?v_7 i0)) i0 (select ?v_7 i7)) (store (store ?v_14 i7 (select ?v_14 i0)) i0 (select ?v_14 i7))))))))))))))))))
(check-sat)
