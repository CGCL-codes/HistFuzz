(declare-sort Loc)

(define-sort SetLoc () (Set Loc))

(declare-sort FldLoc)

(declare-fun null$0 () Loc)
(declare-fun Btwn$0 (FldLoc Loc Loc Loc) Bool)
(declare-fun next$0 () FldLoc)
(declare-fun sk_FP$0 () SetLoc)
(declare-fun sk_FP_1$0 () SetLoc)
(assert (not (= sk_FP_1$0 sk_FP$0)))
(assert (= sk_FP$0 (union sk_FP_1$0)))
(assert (Btwn$0 next$0 null$0 null$0 null$0))
(assert (forall ((?u Loc) (?x Loc) (?y Loc) (?z Loc)) (and (Btwn$0 next$0 ?x ?u ?z) (Btwn$0 next$0 ?u ?y ?z))))
(check-sat)
