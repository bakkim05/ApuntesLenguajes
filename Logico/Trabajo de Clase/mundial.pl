mundial(rusia, 2018).
mundial(brazil, 2014).
mundial(sur-africa, 2010).
mundial(alemania, 2006).
mundial(sur-korea-y-japon, 2002).
mundial(francia, 1998).
mundial(estados-unidos, 1994).
mundial(italia, 1990).

preguntarMundial(Fecha):-
    %writeln('Consulte la fecha deseada: '), read(Fecha),
    mundial(X, Fecha), writeln(X).