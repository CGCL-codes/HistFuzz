(declare-fun B () String)
(declare-fun E () String)
(declare-fun F () String)
(declare-fun A () String)
(declare-fun C () String)
(declare-fun D () String)
(assert (= (str.++ E F "a" C "aa" C B C) (str.++ D D)))
(assert (= (str.++ E E F B "a") (str.++ D F "aa" C C "aa" C)))
(assert (= (str.++ B C "aaaaa" C C "aa" E) (str.++ F F C C C "aa" C "aa" C C "aaaa")))
(assert (= (str.++ B B B C) (str.++ D D)))
(assert (= (str.++ B B E C C "a") (str.++ D D)))
(check-sat)
