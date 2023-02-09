(declare-fun var_8 () String)
(assert (str.in_re (str.++ (str.replace_re "" (str.to_re "") "") (str.replace_re "" (str.to_re (str.replace "" var_8 (str.++ var_8 var_8))) var_8)) (re.range "a" "u")))
(check-sat)
