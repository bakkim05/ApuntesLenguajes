inversa(L1, L):- inversa(L1, [], L).
inversa([],L,L).
inversa([X|L1], L2, L3):- inversa(L1, [X|L2],L3).


longitud([],0).
longitud([_|Lista1], Contador):- longitud(Lista1,Contador1), Contador is Contador1 + 1.