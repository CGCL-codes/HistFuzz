(declare-fun WDFQvmj_new () String)
(declare-fun d () String)
(declare-fun shifted1_T0_2 () String)
(declare-fun b () String)
(declare-fun shifted1_T2_2 () String)
(declare-fun shifted2_value () String)
(declare-fun c () String)
(assert (or (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= 1 0)) (>= (- (str.len (str.replace d shifted1_T2_2 (str.at d 0))) 1) 0))) (>= (- (str.indexof (str.substr (str.substr WDFQvmj_new (str.len shifted1_T0_2) (str.len (str.replace d shifted1_T2_2 (str.at d 0)))) 1 (- (str.len (str.substr WDFQvmj_new (str.len shifted1_T0_2) (str.len (str.replace d shifted1_T2_2 (str.at d (str.len d)))))) 1)) " " 0) 0) 0)))))))))))))))) (>= 1 0))))))))))))))))) (>= (+ (str.indexof (str.substr (str.substr WDFQvmj_new (str.len shifted1_T0_2) (str.len shifted2_value)) 1 (- (str.len (str.replace d shifted1_T2_2 (str.at d (str.len d)))))) " " 0) 1) 0)) (>= (- (str.len (str.substr (str.substr WDFQvmj_new (str.len shifted1_T0_2) (str.len shifted2_value)) 1 (- (str.len (str.substr WDFQvmj_new (str.len shifted1_T0_2) (str.len (str.replace d shifted1_T2_2 (str.at d (str.len d)))))) 1))) (+ (str.indexof (str.substr (str.substr WDFQvmj_new (str.len shifted1_T0_2) (str.len (str.replace d shifted1_T2_2 (str.at d (str.len d))))) 1 (- (str.len (str.substr WDFQvmj_new (str.len shifted1_T0_2) (str.len shifted2_value))) 1)) " " 0) 1)) 0))))) (>= 0 0))))))))) (>= 0 0))))))))) (>= 0 0))))))))))) (>= 0 0))) (>= 0 0)) (>= 1 0)))))))) (>= 0 0)))))))))
(assert (= WDFQvmj_new (str.++ shifted1_T0_2 (str.++ b "") shifted1_T2_2 shifted2_value)))
(check-sat)
