(declare-fun a () String)
(declare-fun b () String)
(declare-fun e () String)
(declare-fun h () String)
(declare-fun k () String)
(declare-fun l () String)
(declare-fun m () String)
(declare-fun q () String)
(declare-fun ah () String)
(declare-fun c () Bool)
(declare-fun d () Bool)
(declare-fun f () Bool)
(declare-fun g () Bool)
(declare-fun i () Bool)
(declare-fun j () Bool)
(declare-fun n () Bool)
(declare-fun ag () Bool)
(assert (= "" (str.substr a 3 (str.len e))))
(assert (= (= "" (str.substr a 0 0)) (= j d)))
(assert (= (or n (= g (= f c))) (and (= (str.substr h 4 (str.len a)) (str.++ m q)) (str.in.re m (re.++ (str.to.re "") (re.++ (str.to.re "_") (re.++ (str.to.re "u") (re.++ (str.to.re "t") (re.++ (str.to.re "m") (re.++ (str.to.re "a") (re.++ (str.to.re "=") (re.++ (str.to.re "1") (re.++ (str.to.re "6") (re.++ (str.to.re "8") (str.to.re "8") (str.to.re "")))))))))))))))
(assert (= n (= (str.substr b (str.len l) (str.len (str.substr k (str.len m) (str.len (str.substr e (str.len q) (str.len ah)))))) "")))
(assert (= b (str.++ m ah)))
(assert (= (= c i) (not ag)))
(check-sat)
