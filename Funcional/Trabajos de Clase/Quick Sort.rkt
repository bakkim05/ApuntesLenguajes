#lang racket

(define (mayores pivot lista)
  (cond
    ((null? lista) lista)
    ((>= (car lista) pivot) (cons (car lista) (mayores pivot (cdr lista))))
    (else (mayores pivot (cdr lista)))
    )
  )

(define (menores pivot lista)
  (cond
    ((null? lista) lista)
    ((< (car lista) pivot) (cons (car lista) (menores pivot (cdr lista))))
    (else (menores pivot (cdr lista)))
    )
  )

(define (q_aux pivot lista)
  (cond
    ((null? lista) (list pivot))
    (else (append (qs(menores pivot lista)) (list pivot) (qs(mayores pivot lista))))
    )
  )

(define (qs lista)
  (cond
    ((null? lista) lista)
    (else (q_aux (car lista) (cdr lista)))
    )
  )


#|Trabajo en Clase Semana 10 Clase 2|#