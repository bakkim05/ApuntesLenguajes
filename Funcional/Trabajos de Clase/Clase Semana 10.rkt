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


(define (miembro x y)
  (cond
    ((or (null? x) (null? y)) #f)
    ((equal? (car y) x) #t)
    (else
     (miembro x (cdr y)))
    )
  )

(define (eliminar x y)
  (cond
    ((null? y) '())
    ((equal? x (car y)) (eliminar x (cdr y)))
    (else (cons (car y)(eliminar x (cdr y))))
    )
  )