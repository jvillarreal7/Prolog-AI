main:-
    inicio,
    repeat,
    write('> '),
    read(X),
    do(X),
    X == quit.

inicio:-
    writeln('Bienvenido al analizador sintactico.'),
    menu.

menu:-
    writeln('Escriba la accion que desea realizar:'),
    writeln('(cargar, ejecutar, ayuda, salir)').

do(cargar):-
    cargar,
    !.

do(ejecutar):-
    ejecutar,
    !.

do(ayuda):-
    ayuda,
    !.

do(salir):-
    abort.

do(X):-
    write(X),
    writeln(' no es una accion valida.'),
    fail.

cargar:-
    writeln('Introduzca el nombre del archivo con la gramática entre comillas: (p. ej. ''gram.txt''.)'),
    read(F),
    reconsult(F).