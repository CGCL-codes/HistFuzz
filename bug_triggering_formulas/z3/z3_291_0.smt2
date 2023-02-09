(assert (and (<= c_ULTIMATE.start_main_~max~5 5) (<= 5 c_ULTIMATE.start_main_~max~5) (not (< (mod c_ULTIMATE.start_main_~i~5 4294967296) (mod c_ULTIMATE.start_main_~max~5 4294967296)))))
(assert (not (or (<= 4294967300 c_ULTIMATE.start_main_~i~5) (<= c_ULTIMATE.start_main_~i~5 4))))
(check-sat)
(pop)
