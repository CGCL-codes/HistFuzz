(declare-fun a (Bool Bool Int Int Int Int Int Int Int) Bool)
(assert (forall ((b Int) (c Bool) (d Bool) (k Int) (e Int) (f Int) (l Int) (m Int) (n Int)) (=> (= b 0) (not d) (a c d f l m n k e b))))
(assert (forall ((c Bool) (d Bool) (f Int) (l Int) (m Int) (n Int) (k Int) (e Int) (b Int) (gm Int) (gf Int) (gk Int) (gb Int) (gc Bool) (gn Int) (ge Int) (gl Int) (gd Bool)) (let ((h (and (= e 1 (ite (= b n) l b)) (= gd (distinct b n)) (= ge 0)))) (let ((o (and (a c d f l m n k e b) h))) (=> o (a gc gd gf gl gm gn gk ge gb))))))
(assert (forall ((c Bool) (d Bool) (f Int) (l Int) (m Int) (n Int) (k Int) (e Int) (b Int)) (=> (a c d f l m n k e b) d false)))
(check-sat)
(declare-fun a (Bool Bool Int Int Int Int Int Int Int) Bool)
(assert (forall ((b Int) (c Bool) (d Bool) (k Int) (e Int) (f Int) (l Int) (m Int) (n Int)) (=> (= b 0) (not d) (a c d f l m n k e b))))
(assert (forall ((c Bool) (d Bool) (f Int) (l Int) (m Int) (n Int) (k Int) (e Int) (b Int) (gm Int) (gf Int) (gk Int) (gb Int) (gc Bool) (gn Int) (ge Int) (gl Int) (gd Bool)) (let ((h (and (= e 1 (ite (= b n) l b)) (= gd (distinct b n)) (= ge 0)))) (let ((o (and (a c d f l m n k e b) h))) (=> o (a gc gd gf gl gm gn gk ge gb))))))
(assert (forall ((c Bool) (d Bool) (f Int) (l Int) (m Int) (n Int) (k Int) (e Int) (b Int)) (=> (a c d f l m n k e b) d false)))
(check-sat)
