(assert (not (fp.isNegative (fp.min (_ -oo 8 24) (_ +zero 8 24)))))
(check-sat)
