(declare-const v15 Bool)
(declare-const _13-0 (_ BitVec 13))
(assert (or (bvule (bvnor _13-0 _13-0) (bvsdiv (bvnot _13-0) (bvnot _13-0)))))
(check-sat)
