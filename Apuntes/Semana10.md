# Parte 1

## Emparejamiento de patrones

+ Se refiere a la posibilidad que brindan algunos lenguajes funcionales de definir funciones por casos;
esto le da mayor capacidad expresiva al lenguaje permitiendo escribir el codigo mas claro, sencillo y conciso.
+ Fib 0 = 1
+ Fib 1 = 1
+ Fib X = Fib(X-1) + Fib(X-2)

## Lenguajes Funcionales

+ Hacen uso de las propiedades matematicas de las funciones
+ Tratan las funciones como **cuidadanos de primera clase**.
    + Tienen operaciones que permiten combinar funciones para crear funciones mas complejas.

## Componentes de los lenguajes funcionales

+ Los lenguajes funcionales tienen 5 componentes
    + Conjunto de operiaciones primitivas.
    + Conjunto de formas funcionales que combinan funciones para crear nuevas.
    + La operacion de aplicar una funcion a sus argumentos y producir un valor
    + Un conjunto de objetos primitivos
    + Un mecanismo para ligar un nombre con una nueva funcion
        + Esto es necesario para definir funciones recursivas.

## Lenguajes FP

+ Lenguaje funcional; simple y puro
+ Creado por John Backus a principio de los 70s.
+ No tiene variables, todos los datos deben de ser usados literalmente.
+ Las principales estructuras de datos del lenguaje son los valores de base y las secuencias.
+ Estos valores se construyen a partir de cualuqier conjunto de valroes atomicos:
    + Booleanos: {T,F}
    + Enteros: {0,1,2,...inf}
    + Caracteres: {'a, 'b, 'c, ...}


## Lenguaje LISP

+ Es el lenguaje de programacion mas cercano a un lenguaje funcional
+ Especificado originalmente en 1958 por John McCarthy
+ Con el fin de mejorar la eficiencia de las versiones actuales de LISP incluyen caracteristicas no funcionales.

## Ventajas de utilizar Scheme

+ Es un lenguaje oritentado hacia la modelacion de problemas. Facilita la abstraccion de datos y procesos.
+ El pasar de una especificacion formal hacia el desarrollo de un programa es relativamente sencillo.
+ Posee una base matematica solida, el calculo lambda. De esta forma, las pruebas de correctitud de programas son mucho mas faciles.
+ Usualemtne los programas escritos en este lengauje son mucho mas cortos, lo cual permiten un mayor nivel de perfeccionamiento y mantenimiento.

