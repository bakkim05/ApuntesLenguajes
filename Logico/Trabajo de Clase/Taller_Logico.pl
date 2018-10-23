varon(albert).
varon(edward).

mujer(alice).
mujer(victoria).

padres(edward, victoria, albert).
padres(alice, victoria, albert).

hermana_de(X,Y):- mujer(X), padres(X, A, B), padres(Y, A, B), X\=Y.


persona(alicia).
persona(marco).
persona(sally).

legusta(alicia, coca).
legusta(alicia, fanta).
legusta(alicia, sprite).
legusta(marco, water).
legusta(marco, coffee).
legusta(sally, pepsi).


miembro(Val, [Val|_]).
miembro(Val, [_|Cola]):- miembro(Val, Cola).

%------------------------------------------------------------------------

%Princi%
progenitor(clara, jose).
progenitor(jose, ana).
progenitor(jose, patricia).
progenitor(patricia,jaime).
progenitor(tomas, jose).
progenitor(tomas, isabel).
progenitor(juan, maria).

%parte A
valioso(oro).
mujer(ana).
tiene(juan, oro).
tiene(javier, carro).
presta(juan, maria, libro).
presta(juan, pedro, lapiz).
presta(pedro, juan, borrador).

abuelo(Z,X):- progenitor(Z,Y) , progenitor(Y,X).
bisabuelo(A,X):-abuelo(Z,X), progenitor(A,Z).

%------------------------------------------------------------------------

inversa(L1, L):- inversa(L1, [], L).
inversa([],L,L).
inversa([X|L1], L2, L3):- inversa(L1, [X|L2],L3).


longitud([],0).
longitud([_|Lista1], Contador):- longitud(Lista1,Contador1), Contador is Contador1 + 1.

%------------------------------------------------------------------------

mundial(rusia, 2018).
mundial(brazil, 2014).
mundial(sur-africa, 2010).
mundial(alemania, 2006).
mundial(sur-korea-y-japon, 2002).
mundial(francia, 1998).
mundial(estados-unidos, 1994).
mundial(italia, 1990).

preguntarMundial(Fecha):-
    mundial(X, Fecha), writeln(X),break.