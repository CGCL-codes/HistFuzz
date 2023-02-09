(declare-fun a () String)
(declare-fun b () String)
(assert (> (ite (str.prefixof "-" (str.at b 0)) 0 (str.to_int (str.at b (- (str.len b) (str.len a))))) 0))
(check-sat)
