#lang racket

#|
haga un programa que reciba como entrada desde teclado tres numeros
e imprima el promedio, la sumatoria y el producto de los tres.
Ademas que muestre la distancia Euclidiana (valor abs(X1 - X2) entre
los dos primeros numeros.
|#


(define (sumatoria a b c)
  (+ a b c))

(define (promedio a b c)
  (/ (+ a b c) 3))

(define (producto a b c)
  (* a b c))

(define (euclid a b)
  (abs(sqrt(+(expt a 2)(expt b 2)))))
