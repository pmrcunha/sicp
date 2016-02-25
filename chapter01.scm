;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname chapter01) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;;; SICP - Problem Sets

; 1.1

10

(+ 5 3 4)

(- 9 1)

(/ 6 2)

(+ (* 2 4) (- 4 6))

(define a 3)

(define b (+ a 1))

(+ a b (* a b))

(= a b)

(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

; 1.2

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))

; 1.3

(define
  (square x)
  (* x x))

(define
  (add-square-2-largest x y z)
  (cond ((and (< x y) (< x z)) (+ (square y) (square z)))
        ((and (< y x) (< y z)) (+ (square x) (square z)))
        (else (+ (square x) (square y)))))

; 1.4

(define
  (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

#|
If b is above 0, the procedure adds a and b,
otherwise it subtracts b to a
|#

; 1.5

#|
Applicative

(test 0 (p))

(p) calls itself in infinite recursion. Since in applicative order evaluation the
combinations are evaluated before the expression, the interpreter will simply crash.

Normal

(test 0 (p))

(if (= 0 0)
    0
    (p))

0

In normal order evaluation, the combinations are fully expanded to primitive operators
before the expression is evaluated. This means that the predicate expression (conditional)
is evaluated to true, and (p) is never evaluated.

|#


  