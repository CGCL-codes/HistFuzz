(declare-fun v8 () Bool)
(declare-fun i2 () Int)
(declare-fun seq7 () (Seq Int))
(declare-fun seq8 () (Seq Int))
(declare-fun str7 () String)
(declare-fun str8 () String)
(assert (seq.suffixof seq8 (seq.extract (seq.unit 0) 0 (str.len str7))))
(assert (or v8 (= 0 (+ i2 (* 3 (seq.len seq7) (str.len str7))))))
(assert (not (= (str.substr str8 (* 3 (seq.len seq7) (str.len str7)) i2) (str.substr str8 0 i2))))
(check-sat)
