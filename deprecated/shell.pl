%% Shell del sistema experto %%

main:-
    inicio,
    repeat,
    write('> '),
    read(X),
    do(X),
    X == quit.

inicio:-
    writeln('¡Bienvenido al sistema experto!'),
    menu.

do(cargar):-
    cargar_base,
    !.

do(ejecucion):-
    ejecucion,
    !.

do(salir):-
    abort.

do(X):-
    write(X),
    writeln(' no es una acción válida.'),
    fail.

menu:-
    writeln('Escriba la acción que quiera realizar.'),
    writeln('Opciones: cargar, ejecucion, salir.').

cargar_base:-
    writeln('Introduzca el nombre del archivo con la base de conocimiento entre comillas: (p. ej. ''gatos.nkb''.)'),
    read(F),
    reconsult(F).

ejecucion:-
    writeln('test'),
    abolish(progreso,3),
    writeln('test2'),
    probar(meta_final(X),[]),
    writeln('test3'),
    write('La respuesta es: '),
    writeln(X).

% ejecucion:-
%     writeln('No se encontró una respuesta.').

preguntar(Atributo,Valor,_):-
    progreso(si,Atributo,Valor),
    !.

preguntar(Atributo,Valor,_):-
    progreso(_,Atributo,Valor),
    !,
    fail.

preguntar(Atributo,_,_):-
    progreso(si,Atributo,_),
    !,
    fail.

preguntar(A,V,Hist):-
    write(A :V),
    write('? (si o no) '),
    input_usuario(S,Hist),
    asserta(progreso(S,A,V)),
    S = si.

menu_preguntar(Atributo,Valor,_,_):-
    progreso(si,Atributo,Valor),
    !.

menu_preguntar(Atributo,_,_,_):-
    progreso(si,Atributo,_),
    !,
    fail.

menu_preguntar(Atributo,ValorPregunta,Submenu,Hist):-
    nl,
    write('Cuál es el valor para '),
    write(Atributo),
    writeln('?'),
    mostrar_submenu(Submenu),
    write('Teclee el número de su elección: '),
    input_usuario(Num,Hist),
    nl,
    opcion_menu(Num,ValorRespuesta,Submenu),
    asserta(progreso(si,Atributo,ValorRespuesta)),
    ValorPregunta = ValorRespuesta.

mostrar_submenu(Submenu):-
    m_submenu(1,Submenu),
    !.

m_submenu(_,[]).
m_submenu(N,[Item|Resto]):-
    write(N),
    write(' : '),
    writeln(Item),
    Ni is N + 1,
    m_submenu(Ni,Resto).

elegir_submenu(N,Valor,Submenu):-
    integer(N),
    e_submenu(1,N,Valor,Submenu),
    !.
elegir_submenu(Valor,Valor,_).

e_submenu(_,_,ninguno_de_los_anteriores,[]).
e_submenu(N,N,Item,[Item|_]).
e_submenu(Contador,N,Valor,[_|Resto]):-
    SigContador is Contador + 1,
    e_submenu(SigContador,N,Valor,Resto).

input_usuario(X,Historial):-
    repeat,
    write('> '),
    read(X),
    procesar_respuesta(X,Historial),
    !.

procesar_respuesta(porque,Historial):-
    write_list(4,Historial),
    !,
    fail. 

procesar_respuesta(X,_).

probar(true,_):-
    !.

probar((Meta,Resto),Historial):-
    prob(Meta,[Meta|Historial]),
    probar(Resto,Historial).

probar(Meta,Historial):-
    prob(Meta,[Meta|Historial]).

prob(true,_):-
    !.
prob(menu_preguntar(X,Y,Z),Historial):-
    menu_preguntar(X,Y,Z,Historial),
    !.
prob(preguntar(X,Y),Historial):-
    preguntar(X,Y,Historial),
    !.
prob(Meta,Historial):-
    clause(Meta,Cuerpo),
    probar(Cuerpo,Historial).


como(Meta):-
    clause(Meta,Cuerpo),
    probar(Cuerpo,[]),
    escribir_cuerpo(4,Cuerpo).

porque_no(Meta):-
    clause(Meta,Cuerpo),
    escribir_linea([Meta,'falla porque: ']),
    explicar(Cuerpo).
porque_no(_).

explicar(true).
explicar((Encabezado,Cuerpo)):-
    checar(Encabezado),
    explicar(Cuerpo).

checar(E):-
    probar(E,[]),
    escribir_linea([E,acierta]),
    !.
checar(E):-
    escribir_linea([E,falla]),
    fail.

escribir_lista(N,[]).
escribir_lista(N,[E|T]):-
    tab(N),
    writeln(E),
    escribir_lista(N,T).

escribir_cuerpo(N,(Primero,Resto)):-
    tab(N),
    writeln(Primero),
    escribir_cuerpo(N,Resto).
escribir_cuerpo(N,Ultimo):-
    tab(N),
    writeln(Ultimo).

escribir_linea(L):-
    aplanar(L,LF),
    e_linea(LF).
e_linea([]):-
    nl.
e_linea([H|T]):-
    write(H),
    tab(1),
    e_linea(T).
aplanar([],[]):-
    !.
aplanar([[]|T],T2):-
    aplanar(T,T2),
    !.
aplanar([[X|Y]|T],L):-
    aplanar([X|[Y|T]],L),
    !.
aplanar([H|T],[H|T2]):-
    aplanar(T,T2). 