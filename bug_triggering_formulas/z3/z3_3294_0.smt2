(declare-sort a$) 

(declare-sort c$) 

(declare-sort d$) 

(declare-sort f$) 

(declare-sort e$)      

(declare-fun comp$b (f$) e$)
(declare-fun m$g (e$ d$) f$)
(declare-fun m$ac (f$ a$) c$)
(declare-fun m$aw (d$ a$) a$)
(assert (forall ((?h f$) (?i d$) (?j f$) (?k d$)) (= (= (m$g (comp$b ?h) ?i) (m$g (comp$b ?j) ?k)) (forall ((?l a$)) (= (m$ac ?h (m$aw ?i ?l)) (m$ac ?j (m$aw ?k ?l)))) false)))
(check-sat)
