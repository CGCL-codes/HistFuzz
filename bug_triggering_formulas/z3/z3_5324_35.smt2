(declare-sort Index)

(declare-sort Element)

(declare-fun a1 () (Array Index Element))
(declare-fun i3 () Index)
(declare-fun i7 () Index)
(assert (let ((?v_5 a1)) (let ((?v_10 a1)) (not (= (store ?v_5 i7 (?v_5 i7)) (store ?v_10 i3 (?v_10 i7)))))))
(check-sat)
