(declare-fun a () String)
(declare-fun b () String)
(declare-fun c () String)
(declare-fun d () String)
(assert (or (distinct (str.suffixof "B" (str.replace "A" b "B")) (distinct (str.substr a 1 (str.len b)) "A")) (distinct (= c "A") (str.suffixof "A" (str.replace "A" c "B")))))
(assert (distinct a (str.++ (str.++ b "") d)))
(check-sat)
