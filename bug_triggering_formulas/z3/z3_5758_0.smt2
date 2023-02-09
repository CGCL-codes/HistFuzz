(declare-const x Bool)
(declare-fun s () String)
(assert (or x (= s (str.replace_all (str.replace_all (str.replace_all (str.++ "a" (str.++ "ea" "ea")) "a" (str.++ "ea" (str.++ "a" "ea"))) "a" (str.replace_all (str.++ "e" (str.++ "e" "e")) "e" (str.++ "e" (str.++ "earc" "earc")))) "e" (str.replace_all (str.replace_all (str.++ "e" (str.++ "e" "e")) "e" (str.++ "e" (str.++ "e" "e"))) "e" (str.replace_all (str.replace "earc" "" (str.++ "r" "earc")) "e" "arc"))))))
(check-sat)
