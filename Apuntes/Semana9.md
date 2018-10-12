# Parte 1

## Introduccion

+ Los primeros lenguajes de programacion fueron disenados durante la decada de los 50.
+ El estudio de los lenguajes de programacion tiene como objetivo la busqueda de maneras de disenar lenguajes que combinen poder expresvivo con simplicidad y eficiencia.
+ Pascal, disenado por Niklaus Wirth.
+ Java y C disenados por un grupo pequeno de personas.
+ Ada y PL/1 disenados por un grupo grande de personas.

## Requisitos de un lenguaje de programacion

+ Universal: todo problema que pueda ser resuelto por una computadora, deber ser posible de programar en el lenguaje. hasta un lenguaje pequeno puede cumplirlo.
+ Nataural: debe facilitar la resolucion de problemas al menos para el area de aplicacion del lenguaje.
+ Implementable: debe ser posible ...

## Sintaxis vs Semantica

+ Sintaxis: Se refiere a la forma de los programas; como los diferentes componentes del lenguaje son agregados para formar programar
	+ Afecta el como los programas son escritos por los programadores, como son leidos por otros programadores y como se hace parsing de ellos.
+ Semantica: Se refiere al significado de los programas; como se comportan cuando son ejecutados.
	+ Determina como los programas son compuestos por los programadores, como son comprendidos por otros programadores y como son interpretados por el computador.

# Procesadores de lenguajes

+ Es cualquier sistema para procesamiento de programas, ejecucion de programas o prepara dichos programas para ejecucion.

# Programas de alto nivel

+ Se le caracteriza por expresarle el algoritmo de una manera adecuada a la capacidad cognitiva humana, en lugar de la capacidad que se la ejecuta de las maquinas.
+ Son programas que son independientes de la maquina sobre la que se ejecutan.
+ Son compilados en lenguaje de maquina o son interpretados de manera directa o una combinacion de ambos.

# Paradigmas de Programacion

+ Imperativo: Uso de comandos para actualizar variables, Caracterizado por el uso de variables, comandos y procedimientos.
+ Orientado a Objetos: La variables puesden ser accedidasunicamente por medio de operaciones asociadas a ellas. Caracterizado por el uso de objetos clases y herencia.
+ Funcional: Hace uso de funciones como objetos de primera clase e incorporan avanzados sistemas de tipos. Se basan en funciones sobre listas y arboles, permiten resolver problemas significativos sin utilizar variables.
+ Logico: Uso de principios logicos para hacer deducciones que resuelven problemas. Se caracteriza por el uso de relaciones, Estan basados en un subconjunto de la logica matematica. El computador infiere asociaciones entre valores en lugar de calcular valores de salida a partir de valores de entrada.

## FORTRAN (Formula Translating System)

+ Desarrollado originalmente por IBM en 1957.
+ Introdujo las expresiones simbolicas, arreglos y proceidmientos.
+ Introdujo los subprograms con parametros.
+ En su forma original era considerado de bastante bajo nivel. Sus flujos de control eran bastante afectados por saltos condicionales y no condicionales. (Instrucciones jump disfrazadas)
+ Su ultima version fue estandarizada en 1997.

## COBOL (COmmon Business-Oriented Language)

+ Fue creado en el ano 1959.
+ Introdujo el concepto de descripcion de datos.
+ Introdujo la idea de un lenguaje con un area de aplicacion no numerica.
+ Su ultima version fue estandarizada en el 2002.

## Algol 60 (Algorithmic Languaje)

+ Fue creado en el ano 1960 sucesor de Algol creado en 1958.
+ Fue el primer lenguaje de programacion disenado para comunicarse por medio de algoritmos y no solo para programar una computadora.
+ Introduce la estructura de bloques que permite desclarar los elementos cuando el programa los necesita y no solo al inicio.
+ Ha tenido un gran influencia en muchos lenguajes:
	- CPL, BPCL, Simula, Pascal

## PL/1 (Progamming Language 1)

+ Fue propuesto por IBM hacia 1970
+ Combina la capacidad numerica de FORTRAN y Algol con las habilidades de procesamiento de datos de COBOL.
+ Introdujo formas de bajo nivel para manejar excepciones y concurrencia.
+ El resultado fue un lenguaje muy grande complejo, incoherente y dificil de usar.

## Pascal

+ Fue creado por el profesor suizo Nicklaus Writh entre los anos 1968 y 1969
+ Es el mas popular de los programas Algol-like debido a su simpleza, sistematizacion e implementacion eficiente
+ De los primeros en  tener una gran riqueza en estrucutra de control, tipo de datos y definiciones.

## C

+ Fue desarrollado por Dennis Ritchie entre 1969 y 1972.
+ Originalmente disenado para ser el lenguaje de programacion para Unix.
+ Sirve para programar tanto a bajo como alto nivel.
+ Sus caracteristicas de bajo nivel son facilmente mal utilizados resultando en sistemas no portables y dificiles de mantener.

## C++

+ Fue disenado a mediados de los anos 1980 por Bjarne Stroustrup.
+ La intencion de su creeacion fue el extender al lenguaje de programacion C mecanismos que permiten la manipulacion de objetos.
+ Unio las comunidades de orientacion a objetos con C, lo que lo hizo muy popular.

## Java

+ Fue disenado simplificando C++ de manera drastica.
+ A pesar de ser un simple lenguaje orientado a objetos, puede ser utilizado para programacion distribuida y concurrente.
+ Posee una implementacion altamente portable gracias a su maquina virtual.

## LISP

+ Fue especifado originalmente en 1958 por John McCarthy.
+ Primer lenguaje funcional.
+ Basado en funciones sobre listas.
+ Soporta variables y asignaciones.

## Prolog (PROgrammation en LOGique -Frances-)

+ Fue ideado a principios de los anos 70 en la Univerdad de Aix-Marseille (Marsella, Francia)
+ Lenguaje clasico de progrmacion logica.
+ En su forma pura, es muy eficiente por lo que ha sido ampliado con caracteristicas no logicas para hacerlo mas util.

`Leer Capitulos 1,2,3,4,8 (Libro Amarillo)`

## Paradigma de programacion funcional

+ La esencia de la programacion funcional consiste en la combinacion de funciones para producir funciones aun mas poderosas.

```
Funcion: Asociacion que toma cada elemento de un conjunto (dominio) y le asigna un ambito (Rango).

Ejemplo: Cos(x)
```
## Paradigma de Programacion Funcional

+ Estilo de progrmacion que enfatiza la evaluacion de expresiones, antes que la ejecucion de comandos.
+ Una progrmacion funcional esta constituido enteramente por funciones; el programa principal es una funcion que toma como argumento la entrada al programa y genera la salida del programa como su resultado.
+ La funcion principal se define en terminos de otras funciones y estas a su vez, en terminos de mas funciones; esta cadena finaliza en funciones predefinidas o primitivas.

### Se ajusta C a la definicion de programa funcional?  Cual es la diferencia?

+ La principal diferencia de con los progrmas convencionales es que los unicos elementos constructores en los programas funcionales son la definicion y la aplicacion de funciones, mientras que en los programas imperativos se utilzan variables, asignaciones, ciclos iterativos, etc.
+ Construya una funcion f que reciba como argumento un natural n y retorne la suma de los naturales desde 1 hasta n es decir:

```c
int f (int n)
{
	int i;
	int suma = 0;
	for (i = 1; i <= n; i++)
	{
		suma = suma + i;
	}
	return suma;
}
```

+ En Scheme

```Scheme
(define (Sumatoria X)
	cond((zero? X)
		0)
		(else
		+ X (Sumatoria (- X 1 ))))
```

## Manejo de funciones de alto orden

+ Se refiere a funciones que reciben como argumento o retornan funciones, es decir, las funciones pueden manipularse como datos; esta caracetristicas tambien e referida como: "Funciones como objetos de priemra clase"

## Declaracion de tipos algebraicos

+ Los lenguajes funcionales con tipos como ML y Haskell dan la posibilidad de declarar tipos adicionales a los tipos primitivos.

## Inferencia de Tipos

+ Tradicionalmente, los sistemas de tipos de los lenguajes de programacion se han dividio en dos: estrictos y no estrictos:

	+ Estrictos: el programador debe declarar el tipo de cada una de las variables y de los argumentos de las funciones y procedimineto, y cenirse de manera estrica a estas declaraciones
	+ No estrictos: El programador no debe cenirse necesariamenta a las declaraciones y eventualmente las puede obviar.
+ Los sistemas de inferencia de tipos representan un punto intermedio entre los dos esquemas mencionados.
+ Conservan el caracter estricto del sistema de tipso y por otro liberan al programador de las declaraciones explicitas y de sus valroes de retorno.
