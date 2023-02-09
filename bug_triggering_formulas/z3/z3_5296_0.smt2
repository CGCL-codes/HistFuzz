(declare-fun a () String)
(assert (= a (str.replace_all (str.++ d d) (ite (= a "A") "A" "") (str.++ d d))))
(check-sat)
