#lang racket

#|Programe la funcion elimnar un elemento de un arbol binario.
  Programe la funcion encontrar las rutas anchura primero|#

;Encontrar las rutas anchura primero
(define (encontrado? elemento arbol)
  (cond
    ((null? arbol) #f)
    ((equal? elemento (raiz arbol)) #t)
    ((< elemento (raiz arbol))(encontrado? elemento (hijoIzq arbol)))
    ((> elemento (raiz arbol))(encontrado? elemento (hijoDer arbol)))
    )
  )

(define (anchuraPrimero elemento arbol)
  (cond
    ((null? arbol) #f)
    ((equal? elemento (raiz arbol)) arbol)
    ((< elemento (raiz arbol))(anchuraPrimero elemento (hijoIzq arbol)))
    ((> elemento (raiz arbol))(anchuraPrimero elemento (hijoDer arbol)))
    )
  )


;Eliminar elemento del Arbol
(define (eliminar elemento arbol)
  (cond
    ((null? arbol) '())
    
    ((< elemento (raiz arbol))
     (arbolBinario (raiz arbol) (eliminar elemento (hijoIzq arbol)) (hijoDer arbol)))
    
    ((> elemento (raiz arbol))
     (arbolBinario (raiz arbol) (hijoIzq arbol) (eliminar elemento (hijoDer arbol))))
    
    ((and (null? hijoIzq) (null? hijoDer)) '())
    
    ((null? (hijoIzq arbol)) (hijoDer arbol))
    
    ((null? (hijoDer arbol)) (hijoIzq arbol))
    
    (else
     (arbol (mayor (hijoIzq arbol) (eliminar (mayor (hijoIzq arbol)) (hijoIzq arbol)) (hijoDer arbol)))
     )
    )
  )









;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#|           Funciones Para la Implementacion del Arbol Binario Ordenado           |#
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (arbolBinario central izquierdo derecho)
  (cond
    ((and (null? izquierdo) (null? derecho)) central)
    (else
     (list central izquierdo derecho)
     )
    )
  )

(define (arbol_Aux? x)
  (not (list? x))
  )

(define (raiz arbol)
  (cond
    ((arbol_Aux? arbol) arbol)
    (else
     (car arbol)
     )
    )
  )

(define (hijoIzq arbol)
  (cond
    ((arbol_Aux? arbol) '())
    (else
     (cadr arbol)
     )
    )
  )

(define (hijoDer arbol)
  (cond
    ((arbol_Aux? arbol) '())
    (else
     (caddr arbol)
     )
    )
  )

(define (hoja? nodo)
  (cond
    ((null? nodo)#f)
    ((arbol_Aux? nodo) #t)
    ((and (null? (hijoIzq nodo))(null? (hijoDer nodo)))#t)
    (else
     #f
     )
    )
  )

(define (insertar elemento arbol)
  (cond
    ((null? arbol) (arbolBinario elemento '() '()))
    ((<= elemento (raiz arbol))
     (arbolBinario (raiz arbol) (insertar elemento (hijoIzq arbol)) (hijoDer arbol)))
    ((> elemento (raiz arbol))
     (arbolBinario (raiz arbol) (hijoIzq arbol) (insertar elemento (hijoDer arbol))))
    )
  )

(define (mayor arbol)
  (cond
    ((null? arbol) #f)
    ((null? (hijoDer arbol)) (raiz arbol))
    (else
     (mayor (hijoDer arbol))
     )
    )
  )