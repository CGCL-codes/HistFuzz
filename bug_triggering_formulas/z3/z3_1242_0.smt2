(declare-fun x () (_ FloatingPoint 11 53))
(declare-fun y () (_ FloatingPoint 11 53))
(declare-fun r () (_ FloatingPoint 11 53))
(assert (= x (fp #b0 #b00011111000 #xb0db2ac57d287)))
(assert (= y (fp #b1 #b00101101000 #x422c9af77f44c)))
(assert (= r (fp #b0 #b00011111000 #xb0db2ac57d287)))
(assert (= (fp.max_i (fp #b0 #b00011111000 #xb0db2ac57d287) (fp #b1 #b00101101000 #x422c9af77f44c)) (fp #b0 #b00011111000 #xb0db2ac57d287)))
(check-sat)
