# Introduccion a la PROGRAMACION CON SCHEME

## Operadores Numericos
+ **(abs arg1)** encontrar el valor absoluto de un numero
    + (abs -5) == 5
+ **(min arg1 ... argN)** devuelve el minimo de los argumentos recibidos
    + (min 4 3 1 7) == 1
+ **(max arg1 ... argN)** devuelve el maximo de los argumentos recibidos
    + (max 1 7 5) == 7
+ **(truncate arg1)** trunca el valor de un numero real hacia el entero inmediatamente **inferior**
    + (truncate 10.78) == 10
+ **(round arg1)** redondea el valor de un numero a su valor entero mas cercano
    + (round 10.78) == 11
+ **(quotient arg1 arg2)** devuelve la division entera de sus argumentos. args deben ser numeros enteros
    + (quotient 10 3) == 3
+ **(remainder arg1 arg2)** devuleve el residuo que se obtiene al divider arg1 entre arg2. args deben ser numeros enteros. El resultado tiene el mismo signo que arg1.
    + (remainder 10 -4) == 2
+ **(expt arg1 arg2)** valor de arg1 elevado segun arg2.
    + (expt 2 3) == 8
+ **(sqrt arg1)** raiz cuadrada de arg 1
    + (sqrt 4) == 2

## Predicados Numericos
+ **(= arg1 arg2 ... argN)** necesita por lo menos dos args y devuelve #t o #f.
+ **(equal? arg1 arg2)** igual que (= arg1 arg2), pero solo recibe 2 args.
+  **(zero? arg1)** booleano que verifica si el arg es igual a 0.
+  **(positive? arg1)** booleano que verifica si el arg es positivo.
    +  (positive? 0) == #f
+  **(negative? arg1)** booleano que verifica si el arg es negativo.
    +  (negative? arg1) == #f
+  **(even? arg1)** booleano que verifica si el arg es par.
+  **(odd? arg1** booleano que verifica si el arg es impar.
+  **(number? arg1)** booleano que verifica si el arg es un numero.
    +  (number? 5.11) == #t
+  **(real? arg1)** booleano que verifica si el arg es un numero real.
    +  (real? 5.0) == #t

## Predicados Logicos
+ **(and arg1 arg2 ... argN)** booleano que regresa #t unicamente si todos sus argumentos son verdaderos.
+ **(or arg1 arg2 ... argN)** booleano que regresa #t si por lo menos uno de sus argumentos es verdadero.
+ **(not arg1)** devuelve el valor inverso del booleano.

## Funciones COND y DEFINE

### cond
+ es un tipo especidal de funcion que permite seleccionar una opcion de multiples alternativas.
```Scheme 
> (cond (condicion-1?
        funcion-1)
      (condicion-2?
        funcion-2)
      ...
      (condicion-N?
        funcion-N))
```
+ evalua cada una de las condiciones y cuando enceuntra la primera condicion verdader realiza la funcion asociada.

```Scheme
> (cond 
    ((-7 (+34))
    #t)
    ((-7 5))
    #f))

#t
```

### define
+ se puede utilizar de varias formas, una de ellas sirve para crear variables.

```Scheme
> (define <nombre-variable>
         <valor-variable>)
```

```Scheme
> (define a 7)
> a

7
```
+ Otra forma de utilizar es para crear funciones. Para crear funciones existen dos estilos. Uno meidante el uso de la palabra lambda

```Scheme
> (define <nombreDeLaFuncion> 
    (lambda (arg1 ... argN)
        <cuerpoDeLaFuncion>))
```
```Scheme
> (define suc
    (lambda (num) (+ num 1)))

> (suc 0)

1
```
 + El otro es la forma abreviada.

```Scheme
>(define(<nombreDeLaFuncion> arg0 Arg1 ... argN)
    <cuerpoDeLaFuncion>)
```
```Scheme
> (define (suc num)
    (+ 1 num))

> (suc 0)

1
```

+ Se suele utilizar *define* en conjuncion con la funcion *cond* para crear nuevas funciones. A continuacion se construye la funcion *abs*. **Observe como en la construccion que se presenta se utiliza como ultima condicion el enunciado else que se evalua siempre como verdadero**

```Scheme
> (define (abs num)
    (cond   ((> num 0)
                num)
            ((<num 0>)
                (* -1 num))
            ( else
                0)))
```
+ La forma mas corta de escribir la funcion anterior podria ser:

```Scheme
> (define   (abs num)
    (cond   ((>= num 0)
                num)
            (else
                (* -1 num))))
```

## La funcion LET
+ Es usual que las formulas que se desean programar tengan una estructura muy compleja por lo que resulta util emplear variables intermedias para el calculo.
Para ello se utiliza la funcion *let*.
```Scheme
> (let( <declaracionDeVariables>
        )
    <cuerpoDeLaFuncion>)
```
+ De forma mas detallada, se puede expresar como:
```Scheme
> (let( (variable-1 funcion-1)
        (variable-2 funcion-2)
        (variable-3 funcion-3)
        ...
        (variable-N funcion-N)
        )
    <cuerpoDeLaFuncion>)
```
+ Suponga que se desaea programar la siguiente funcion:
`f(x,y) = y(1-y) + (1-y) + 2x(1+y)(1+y)`

```Scheme
> (define   (f x y)
    (let(   (a (- 1 y))
            (b (+ 1 y))
            )

        (+ (* y a)
        (* a b)
        (* 2 x b b))))
```

+ Existe ademas otra funcion denominada *let** que funciona de manera similar a *let*. Su diferencia radica en el hecho que *let* asocia las variables de manera paralela (todos al mismo tiempo) mientras que *let** asocia las variables de manera secuencial (en el orden descrito).

```Scheme
> (let*(    (a (+ 2 4))
            (b (+ 2 a))
            )
        b)

8
```

## La funcion QUOTE
+ Existe una forma abreviadada de escribir **(quote arg1)** como 'arg1.
```Scheme
> (quote    7)
7

> (quote    (+ 4 5))
(+ 4 5)

> (quote    (zero? 0))
(zero? 0)

> '7
7

> '(+ 4 5)
(+ 4 5)

> 'A
A

> '(zero?   0)
(zero? 0)
```
## la funcion APPLY
+ La funcion **(apply fun '(arg1 ... argN))** se utiliza por el ambiente de interpretacion. Recibe dos argumentos, el primero es una funcion y el segundo son los argumentos de la funcion.
```Scheme
> (apply    fun '(arg1 ... argN))
(fun arg1 ... argN)
```

```Scheme
> (+ 1 2 3 4)
10

> (apply + '(1 2 3 4))
10

> (abs -5)
5

> (apply abs '(-5))
5
```

## La funcion EVAL
+ La funcion **(eval expresion)** es una funcion usada por el ambiente de interpretacion del lengauje
```Scheme
> (eval '(+ 1 2 3))
6

> (eval '(define a 3))
a

> (eval '(define b 4))
b

> (eval '(+ a b))
7
```

