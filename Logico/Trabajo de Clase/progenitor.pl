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