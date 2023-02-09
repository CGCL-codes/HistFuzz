(declare-fun b (Int Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Int) Bool)
(assert (forall ((c Int) (d Bool) (r Bool) (e Int) (s Bool) (f Bool) (t Bool) (v Bool) (g Bool) (h Bool) (i Int) (j Int) (k Int) (l Bool) (sm Bool) (m Bool) (sk Bool) (sl Bool) (n Bool) (o Bool) (u Bool) (p Int) (q Bool)) (or (and (b c d r e f v s f t v g h i) (= sk v)) (b k sm sk j l o m sl n o u q p))))
(check-sat)
