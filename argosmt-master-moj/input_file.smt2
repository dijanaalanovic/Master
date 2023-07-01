(set-logic QF_UFLIA)

(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun z () Int)

(assert (and (>= x 0) (<= x 10)))
(assert (and (>= y 0) (<= y 5)))

(assert (or (and (>= z 0) (<= z 2) (= (+ x y) 7))
            (and (>= z 3) (<= z 5) (= (- x y) 2))
            (and (>= z 6) (<= z 10) (= (* x y) 15))))

(check-sat)
(get-model)
