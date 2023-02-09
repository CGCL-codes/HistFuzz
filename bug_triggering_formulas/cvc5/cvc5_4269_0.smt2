(declare-sort a 0)

(declare-sort p 0)

(declare-sort b 0)

(declare-fun c (b a) p)
(declare-fun q (b) b)
(declare-fun d () b)
(declare-fun r (p) a)
(declare-fun e (p Int) a)
(declare-fun f (p p) Bool)
(declare-fun g (b b) b)
(declare-fun acc (p p) a)
(declare-fun h (p Int) Bool)
(assert (forall ((?i b) (?j b) (?k a) (?l Int)) (= (h (c (g (q ?j) ?i) ?k) ?l) (forall ((?m a) (?n a)) (= (f (c d ?n) (c (q ?i) ?m)) (forall ((?o Int) (?s Int)) (= (<= 0 ?o) (= (and (<= 0 ?s) (< ?s ?l)) (= (distinct ?o ?s) (distinct (r (c (q ?j) (acc (c (g (q ?j) ?i) ?k) (c (q ?i) (e (c (q ?i) ?m) ?o))))) (r (c (q ?j) (acc (c (g (q ?j) ?i) ?k) (c (q ?i) (e (c (q ?i) ?m) ?s)))))))))))))))
(check-sat)
