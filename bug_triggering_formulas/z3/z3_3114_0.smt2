(declare-fun a () String)
(declare-fun b () String)
(assert (distinct (str.prefixof (str.substr a 222 112) b) (str.prefixof (str.at a 182) b)))
(check-sat)
