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
