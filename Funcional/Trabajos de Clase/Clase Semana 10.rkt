#lang racket
(define (fib num)
  (cond
        ((equal? num 0) 0)
        ((equal? num 1) 1)
        (else
         (+ (fib (- num 1)) (fib (- num 2))))))

(define (fact num)
  (cond
    ((equal? num 1) num)
    (else
     (* num (fact (- num 1))))))
