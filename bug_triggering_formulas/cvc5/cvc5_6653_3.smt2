(declare-fun x () String)
(assert (str.in_re (str.replace_re x (str.to_re "A") x) (re.++ (re.comp (str.to_re "A")) (str.to_re "A") re.allchar)))
(check-sat)
