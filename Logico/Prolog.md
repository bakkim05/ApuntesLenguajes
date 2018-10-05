# Introduccion
+ PROLOG es un lenguaje de programación muy útil para resolver problemas que
implican objetos y relaciones entre objetos.
+ Está basado en los siguientes
mecanismos básicos, que se irán explicando a lo largo de este capítulo:
    + Unificación.
    + Estructuras de datos basadas en árboles.
    + Backtracking automático.
+ La sintaxis consiste en lo siguiente:
    + Declarar hechos sobre objetos y sus relaciones.
    + Hacer preguntas sobre objetos y sus relaciones.
    + Definir reglas sobre objetos y sus relaciones.

## Fundamentos de Prolog
+ Para decir que Laura es uno de los dos progenitores de Damián, podríamos declarar
el siguiente hecho PROLOG:
```prolog
progenitor(laura, damian)
```
+ Otros ejemplos pueden ser los siguientes:
```Prolog
le_gusta_a(juan,maria)
valioso(oro)
tiene(juan,libro)
da(juan,libro,maria)
```
+ Un conjunto de hechos
(también llamados cláusulas), junto con un conjunto de reglas, forman lo que se
llama una base de datos PROLOG.

## Las Preguntas de Prolog

+ Sobre un conjunto de hechos se pueden realizar una serie de preguntas. Por
ejemplo:
```prolog
?- le_gusta_a(juan,maria)
```
+ PROLOG busca automáticamente en la base de datos si existe un hecho que se
puede unificar con el hecho que aparece en la pregunta y constesta en **BOOLEANO**.
+  La contestación "NO" no implica
que el hecho sea falso, sino que no se
puede probar (en general) que sea verdadero con el conocimiento almacenado en la
base de datos.
+ Para realizar preguntas más interesantes, como por ejemplo, qué le gusta a María o
cuáles son los padres de Damián, se usarán las variables. En PROLOG las variables
empiezan por mayúscula. Por ejemplo:
```prolog
?-le_gusta_a(maria,X).
?-progenitor(Y,damian).
```
+ PROLOG solo muestra la primera respuesta. Si se quiere seguir calculando se tiene que presionar ";". Cuando pulsamos ";", PROLOG sigue
automáticamente la búsqueda desde la marca de posición en la que se había quedado en la base de datos.

+ Si se quiere hacer un "y" logico entonces las preguntas se ponen separadas por un ",".

```prolog
?-le_gusta_a(juan,maria), le_gusta_a(maria,juan).
?-progenitor(X,ana), progenitor(X,damian).
?-progenitor(tomas,X), progenitor(X,Y).
```

+ Para demostrar si Clara es bisabuela de Jaime, utilizaríamos la siguiente conjunción
de objetivos:
```prolog
?-progenitor(clara,X), progenitor(X,Y), progenitor(Y,jaime).

```
## Las Reglas Prolog

+ A la primera parte de la regla se le llama cabeza o conclusión, el símbolo ":-" es el
condicional (SI)
+ A la parte de la regla que está después de ":-" es el cuerpo o parte condicional. 
+ Las **cláusulas** PROLOG consisten en una cabeza y un cuerpo.
+ Los **hechos** son cláusulas que tienen cabeza pero no tienen cuerpo.
+ Las **preguntas** sólo tienen cuerpo.
+ Las **reglas** tienen siempre cabeza y cuerpo.
+ **Los hechos son siempre ciertos.**
+ Las **reglas** declaran cosas que son ciertas dependiendo de una condición.
+ La definición de varias reglas con el mismo nombre de relación equivale en
PROLOG a la "o" lógica o disyunción.

## La sintaxis PROLOG

+ Los **objetos simples** pueden ser *constantes* o *variables*.
+ Las **constantes** serán *átomos* o *números*.
+ Los **átomos** empiezan con letra minúscula (nunca con números), pueden contener caracteres especiales y pueden ser nombres entre
comillas simples.
+ Los numeros serán enteros o reales, **sin una definición explícita de tipos.**
+ Las **variables** empiezan con mayúscula o con subrayado.
+  Las **variables anónimas** son aquellas cuyo nombre es sólo el carácter subrayado "_". 
    +  Se usan cuando no es importante el nombre de la variable o cuando la variable no puede unificar con otra, dentro de la misma cláusula.
+ El alcance de una variable es la cláusula donde aparece, y el alcance de una constante es todo el programa.
+ La **sintaxis de las estructuras** es la misma que la de los hechos.
    + "Los **hechos** son cláusulas que tienen cabeza pero no tienen cuerpo."
+ Los **funtores** de las estructuras son los nombres de los predicados de hechos y reglas.
+ Los argumentos de los hechos y las reglas son los **componentes de las estructuras**.