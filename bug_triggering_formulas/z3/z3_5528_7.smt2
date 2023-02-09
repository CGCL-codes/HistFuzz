(declare-sort us_main_type)

(declare-sort us_pledge_ty)

(declare-fun length (us_rep2) Int)
(declare-fun us_close (us_rep3) us_main_type)
(declare-fun r__pointer_value () us_split_fields2)
(declare-fun us_pledge_get (us_pledge_ty us_rep2 us_rep1) Bool)
(declare-fun test_route__nth_point__pledge (us_rep2 Int) us_pledge_ty)
(assert (exists ((us_null_pointer us_rep1)) (forall ((r__is_null_pointer Bool)) (forall ((r__pointer_address Int)) (exists ((temp___borrowed_250 us_rep2)) (and true (rec__test_route__point_acc__is_null_pointer us_null_pointer) (= (length temp___borrowed_250) (length (us_repqtmk2 r__is_null_pointer r__pointer_address (us_close (us_repqtmk3 r__pointer_value))))) (forall ((temp___borrowed_236 us_rep2)) (forall ((temp___brower_235 us_rep1)) (or (= (length temp___borrowed_236) (length (us_repqtmk2 r__is_null_pointer r__pointer_address (us_close (us_repqtmk3 r__pointer_value))))) (and (rec__test_route__point_acc__is_null_pointer temp___brower_235) (us_pledge_get (test_route__nth_point__pledge (us_repqtmk2 r__is_null_pointer r__pointer_address (us_close (us_repqtmk3 r__pointer_value))) 1) temp___borrowed_236 temp___brower_235)))))))))))
(check-sat)
