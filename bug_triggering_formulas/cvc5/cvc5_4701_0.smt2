(declare-fun a () String)
(declare-fun b () String)
(declare-fun c () String)
(declare-fun d () String)
(declare-fun e () String)
(declare-fun f () String)
(declare-fun g () String)
(declare-fun h () String)
(declare-fun i () String)
(declare-fun j () String)
(declare-fun k () String)
(declare-fun l () String)
(assert (= f j "abcdefg"))
(assert (= e (str.++ (str.substr b 0 (str.len k)) (str.substr a 0 (str.len d)))))
(assert (= l (str.++ (str.substr c 0 (str.len e)) f)))
(assert (= (str.substr b 0 (str.len k)) "aa"))
(assert (= (str.replace (str.replace c e (str.at c 0)) "a" (str.at c 0)) (str.++ i j)))
(assert (= i (str.++ h g) "aaaa"))
(assert (str.in_re l (re.++ (str.to_re "abcdefgh") (re.* re.allchar))))
(check-sat)
