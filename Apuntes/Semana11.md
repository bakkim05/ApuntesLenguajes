## Matrices
+ Una matriz es un arreglo rectangular de la forma:

```Scheme
a11 a12 a13 ... a1n
a21 a22 a23 ... a2n
a31 a32 a33 ... a3n
a41 a42 a43 ... a4n
... ... ... ... ...
an1 an2 an3 ... ann
```
+ Los valores horizontales se llaman las filas de la matriz o los vectores fila.
+ Los valores verticales se denominan las columnas o los vectores columnas
+ Si la matriz se representa por medio de las filas se puede representar mediante una lista de listas de la siguiente manera:
```Scheme
(   (a11 a12 a13 ... a1m)
    (a21 a22 a23 ... a2m)
     ... ... ... ... ...
    (an1 an2 an3 ... anm)   )
```

## Arboles

+ Un arbol es una estructura jerarquica sobre un conjunto de objetos llamados nodos.
+ La jerarquia de los nodos se establece por medio de conectores llamados ramas.
+ Formalmente un arbol puede definirse recursivamente de la siguiente manera:
    + El arbol nulo es un arbol.
    + Existe un nodo especial llamado raiz.
    + Los nodos restantes se parten en subconjuntos T1, T2 .. Tn con n>0, donde cada uno de estos elementos es a su vez un arbol. Cada uno de los elementos T1, i=1, ... n recibe el nombre de subarbol y posee a su vez una raiz.

```Scheme
                raiz
               /  |  \
              T1  T2  T3
```

## Arboles Binarios
+ Un arbol binario es una estructura donde cada nodo se asocia a lo sumo con dos nodos mas.
+ En este tipo de estructura es usual nombrar al nodo raiz de un subarbol *nodo padre* y a los nodos asociados *hijo izquierdo* e *hijo derecho*
+ Cuando un nodo no posee hijos, se suele decir que sus hijos son nulos.
    + Los hijos nulos puede incluirse en la representacion, o bien, pueden omitirse.

+ Operaciones Basicas
    + Crear Arbol
    + Hijo Izquierdo
    + Hijo Derecho
    + Hoja
    + Nodo
    + Localizar
    + Insertar
    + Eliminar

+ Ejemplos:
    + (10 (5 3 8) (15 14 18) )
    + (10 (5 (3 () ())(8 ()())()15(14()())(18()())))

## Arboles Binarios (Eliminar)
### Caso 1:
+ Se presenta cuando se deasea eliminarelimnar un nodo que no posee hijos.

```Scheme
> (eliminar 14 '(10(538)(15 14 18)))
'(10 (5 3 8) (15 () 18))
```

### Caso 2:
+ Se presenta cuando se desea elimnar un nodo que posee un unico hijo.

```Scheme
> (eliminar 15 '(10(5 3 8) (15 () 18)))
'(10 (5 3 8) 18)
```

### Caso 3:
+ Se presenta cuando se desea elimnar un nodo que posee tanto un hijo izquierdo como un hijo derecho.
    + Tomar el mayor elemento del subarbol izq, o sea tomar el mayor elemento de los menores y ponerlo como raiz.
    + Tomar el menor elemento del subarbol derecho, o sea tomar el menor elemento de los mayores y ponerlo como raiz.

+ Asi se garantiza que todos los elementos a la izquierda son menores y todos a la derecha son mayores que este.

## Grafos
+ Es posible que un grafo tenga arcos de un nodo v a w, asi como del nodo w a v.
+ En estos casos se pueden representar ambos arcos, o bien, se ignorara la direccion del arco.

+ Por ejemplo:
    + Sea G un grafo definido por:
```Scheme
N = (n1 n2 n3 n4)
A = ((n n2)(n2 n1)(n2 n3)(n3 n4)(n4 n1))
```

+ Finalmente se puede mencionar que todo arbol puede representar como un grafo.
+ Ejemplo:
    + Sea G un grafo definido por:
```Scheme
N = (a b c d b1 b2)
A = ((ab) (a c) (a d) (b b1) (b b2))
```

## Grafos (No dirigidos)
+ Ejemplo:
    + Sea un grafo G definido por:
```Scheme
N = (i a b c d x f)
A = (   (i  (ab))
        (a  (i c d))
        (b  (i c d))
        (c  (a b x))
        (d  (a b f))
        (x  (c))
        (f  (d))    )  
```

## Resucrsion por posposicion de trabajo
+ Se tienen que apilar todos los calculos y todas las sumas quedan pospuestas hasta que se alcanza el caso trivial de la recursion.
+ Si la longitud de la lista es demasiado grande, provocara un gran consumo de memoria

