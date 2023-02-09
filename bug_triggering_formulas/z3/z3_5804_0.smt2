(declare-fun v () String)
(assert (str.contains (str.replace v v v) (str.replace v (str.replace_all (str.replace_all (str.replace_all (str.++ "a" (str.++ "ea" "ea")) "a" (str.++ "ea" (str.++ "a" "ea"))) "a" (str.replace_all (str.++ "e" (str.++ "e" "e")) "e" (str.++ "e" (str.++ "ea" "ea")))) "e" (str.replace_all (str.replace_all (str.++ "e" (str.++ "e" "e")) "e" (str.++ "e" (str.++ "e" "e"))) "e" (str.replace_all (str.replace "earc" "" (str.++ "r" (str.++ "earc" "earc"))) "e" (str.++ "arc" "earc")))) "")))
(check-sat)
