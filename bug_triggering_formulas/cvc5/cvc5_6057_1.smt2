(declare-fun literal_5 () String)
(assert true)
(assert (not (= literal_5 (str.replace_re_all literal_5 (re.++ (re.* re.allchar) (re.++ (str.to_re "\u{5c}\u{3c}\u{53}\u{43}\u{52}\u{49}\u{50}\u{54}") (re.* re.allchar))) literal_5))))
(check-sat)
