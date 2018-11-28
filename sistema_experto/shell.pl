:- dynamic si/1.
:- dynamic no/1.

main:-
    inicio,
    repeat,
    write('> '),
    read(X),
    do(X),
    X == quit.

inicio:-
    writeln('Bienvenido al sistema experto.'),
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
    writeln('Introduzca el nombre del archivo con la base de conocimiento entre comillas: (p. ej. ''test.nkb''.)'),
    read(F),
    reconsult(F).

ejecutar:-
    resultado(Resultado),
    write(Resultado),
    nl,
    borrar,
    nl,
    menu.

ayuda:-
    writeln('Opciones disponibles:'),
    writeln('1. cargar: Aqui puede subir una base de conocimiento al sistema experto, tiene que ser del formato de ejemplo para que sea reconocido. (test.nkb)'),
    writeln('2. ejecutar: Aqui puede correr el sistema experto una vez que haya cargado la base de conocimiento. Le hara preguntas hasta llegar a un resultado.'),
    writeln('3. ayuda: Esta aqui en este momento.'),
    writeln('4. salir: Sale del programa.').

salir:-
    abort.

preguntar(Pregunta) :-
    write('Tiene esta caracteristica o pertenece a: '),
    write(Pregunta),
    write('? '),
    read(Respuesta),
    nl,
    ( (Respuesta == si ; Respuesta == s)
    ->
    assert(si(Pregunta)) ;
    assert(no(Pregunta)), fail).

verificar(Caracteristica):-
    (si(Caracteristica)
    ->
    true ;
    (no(Caracteristica)
    ->
    fail ;
    preguntar(Caracteristica))).

borrar:-
    retract(si(_)),
    fail.
borrar:-
    retract(no(_)),
    fail.
borrar.
