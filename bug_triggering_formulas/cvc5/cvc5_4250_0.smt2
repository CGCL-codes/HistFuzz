(declare-sort a 0)

(declare-sort b 0)

(declare-sort c 0)

(declare-fun d (c a) b)
(declare-fun e (c) c)
(declare-fun ab () c)
(declare-fun ad (b) a)
(declare-fun af (b Int) a)
(declare-fun an (b b) Bool)
(declare-fun at (c c) c)
(declare-fun acc (b b) a)
(declare-fun bd (b Int) Bool)
(assert (forall ((bp c) (bf c) (bg a) (bh Int)) (= (bd (d (at (e bf) bp) bg) bh) (forall ((bi a)) (exists ((bj a)) (= (an (d ab bj) (d (e bp) bi)) (forall ((bk Int) (bl Int)) (let ((al (e bf))) (let ((am (d (at al bp) bg))(bm (e bp))) (let ((bn (d bm bi))) (=> (= bk bh) (= (<= bl bh) (= (distinct bk bl) (distinct (ad (d al (acc am (d bm (af bn bk))))) (ad (d al (acc am (d bm (af bn bl)))))))))))))))))))
(check-sat)
