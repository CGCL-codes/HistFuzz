(declare-fun a (Bool Bool Bool Bool Bool Bool Int Int Int Int) Bool)
(assert (forall ((b Bool) (c Bool) (s Bool) (d Bool) (v Bool) (e Bool) (f Int) (o Int) (n Int) (g Int) (h Bool) (i Bool) (j Bool) (k Bool) (l Bool) (m Int) (w Int) (x Int)) (let ((r 6)) (=> (and (a b c s d v e f o n g) (or (not d) (and (= m o w) e)) (or (not s) (= n x))) (a h c i j k l m w x g)))))
(check-sat)
