(assert (not (=> (and (= a (concat tmp1 tmp2)) (= ((_ extract 31 0) a) ((_ extract 31 0) b))) (= (store4 (store4 mem d ((_ extract 31 0) a)) c (bvadd (select4 (store4 mem d ((_ extract 31 0) a)) c) #x00000020)) (store4 (store4 mem d ((_ extract 31 0) b)) c (bvadd (select4 (store4 mem d ((_ extract 31 0) b)) c) #x00000020))))))
(check-sat)
(assert (not (=> (and (= ((_ extract 31 0) a) ((_ extract 31 0) b))) (= (store4 (store4 mem d ((_ extract 31 0) a)) c (bvadd (select4 (store4 mem d ((_ extract 31 0) a)) c) #x00000020)) (store4 (store4 mem d ((_ extract 31 0) b)) c (bvadd (select4 (store4 mem d ((_ extract 31 0) b)) c) #x00000020))))))
(check-sat)
