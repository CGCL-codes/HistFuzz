(declare-const x1 Real)
(declare-const x2 Real)
(declare-const x3 Real)
(declare-const x4 Real)
(declare-const x5 Real)
(assert (and (>= x1 0.0) (<= x2 0.0) (> x3 0.0) (= (* x1 x2) 1.0) (= (+ (* x1 x3) x2 (- (- 1.0) x3)) 2.0)))
(check-sat)
(declare-const x1 Real)
(declare-const x2 Real)
(declare-const x3 Real)
(declare-const x4 Real)
(declare-const x5 Real)
(assert (and (<= x1 0.0) (> x2 0.0) (>= x3 0.0) (distinct (+ x1 x2) 1.0) (distinct (* (+ x1 x3) x2 (* (- 1.0) x3)) 2.0)))
(check-sat)
(declare-fun |ku'0'| () Int)
(declare-fun |ku'1'| () Int)
(declare-fun |ku'4'| () Int)
(declare-fun |ku'3'| () Int)
(declare-fun |ku'2'| () Int)
(assert (and (> |ku'0'| 0) (> |ku'0'| 1)))
(assert (distinct |ku'0'| 1))
(assert (or (>= |ku'1'| 0) (<= |ku'1'| 1)))
(assert (>= (* |ku'1'| |ku'2'| |ku'3'| |ku'4'|) 1))
(assert (or (>= |ku'2'| 0) (> |ku'2'| 1)))
(assert (> (+ |ku'2'| |ku'3'|) 1))
(assert (or (<= |ku'3'| 0) (> |ku'3'| 1)))
(assert (>= (- |ku'3'| |ku'2'|) 1))
(assert (or (<= |ku'4'| 0) (<= |ku'4'| 1)))
(assert (> (+ |ku'4'| |ku'2'| |ku'3'|) 1))
(check-sat)
