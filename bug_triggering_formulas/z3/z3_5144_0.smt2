(declare-fun a () String)
(declare-fun b () String)
(declare-fun c () String)
(declare-fun d () String)
(declare-fun x () String)
(declare-fun e () String)
(declare-fun f () String)
(declare-fun y () String)
(declare-fun g () String)
(declare-fun h () String)
(declare-fun i () String)
(declare-fun j () Int)
(declare-fun k () Int)
(declare-fun l () Int)
(declare-fun m () Int)
(declare-fun n () String)
(declare-fun o () String)
(declare-fun false () Bool)
(declare-fun p () Bool)
(declare-fun q () Bool)
(declare-fun r () Bool)
(declare-fun s () Bool)
(declare-fun t () Bool)
(declare-fun u () Bool)
(declare-fun v () Bool)
(declare-fun w () String)
(assert (= false (not (= m 1))))
(assert (ite r (and false (= g d) (= h "") (= 0 (str.len a)) (= w (str.++ o i)) (not (str.in_re o (str.to_re "")))) (= k 0)))
(assert (= false (not (= l 0))))
(assert (ite s (and v q p (= l (str.len c))) (and (= 2 m) (= w (str.++ b f)))))
(assert (= t (not (= m 0))))
(assert (ite t (and (= y "") (= m j (str.len x)) false (= w n (str.++ g e))) (and u (= 0 (str.len d)))))
(assert (not (= "B" w)))
(assert (< k 0))
(assert (>= 0 l))
(assert (< 0 m))
(check-sat)
