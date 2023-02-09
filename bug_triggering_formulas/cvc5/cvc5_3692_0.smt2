(declare-fun a () (_ BitVec 32))
(assert (exists ((b (_ BitVec 32))) (forall ((c (_ BitVec 32))) (exists ((d (_ BitVec 32))) (let ((a!1 (bvmul (bvadd (bvsmod (bvneg #x00000042) d) (bvmul (bvneg #x00000007) c)) (bvand (bvnot #x0000003d) a)))(a!2 (distinct (bvsdiv (bvxnor (bvsub #x0000000b d) (bvmul #x00000021 c)) (bvsdiv #x00000005 b)) (bvnot #x00000055)))) (or (distinct a!1 #x00000033) (not a!2)))))))
(check-sat)
