(declare-fun v () String)
(assert (exists ((R String)) (str.< (str.replace_all (str.replace_all (str.replace_all (str.++ "a" (str.++ "ea" "ea")) "a" (str.++ "ea" "a")) "a" (str.replace_all (str.++ "e" (str.++ "e" "e")) "e" (str.++ "e" (str.++ "e" "e")))) "e" (str.replace_all (str.replace_all (str.++ "e" (str.++ "e" "e")) "e" (str.++ "e" (str.++ "e" "e"))) "e" (str.replace_all (str.replace "earc" "" (str.++ "ear" "earc")) "e" (str.++ "arc" "earc")))) v)))
(check-sat)
