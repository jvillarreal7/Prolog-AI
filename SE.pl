:- dynamic regla/2.
:- dynamic regla/3.
:- dynamic regla/4.

main:-
    intro.
    menu.

intro:-
    writeln('Sistema Experto'),
    nl.

menu:-
    writeln('1.- Iniciar sistema.'),
    writeln('2.- Cargar reglas.'),
    writeln('3.- Salir.').

logica_menu([Opcion]):-
    member(Opcion,[1]),
    ejecucion.

logica_menu([Opcion]):-
    member(Opcion,[2]),
    cargar_reglas.

logica_menu([Opcion]):-
    member(Opcion,[3]),
    abort.

    


%%% -Reglas default- %%%

%% 1. Yamaha %%
regla(1,[quiero,aprender]),
regla(1,[no,tengo,idea]).

%% 2. Epiphone %%
regla(2,[bajo,presupuesto]),
regla(2,[genero,rock]).

%% 3. Squire %%
regla(3,[bajo,presupuesto]),
regla(3,[genero,cualquiera]).

%% 4. Gibson %%
regla(4,[volverme,profesional]),
regla(4,[genero,cualquiera]),
regla(4,[sonido,calido]).

%% 5. ESP %%
regla(5,[volverme,profesional]),
regla(5,[genero,metal]).

%% 6. PRS %%
regla(6,[volverme,profesional]),
regla(6,[genero,cualquiera]),
regla(6,[sonido,balanceado]).

%% 7. Fender %%
regla(7,[volverme,profesional]),
regla(7,[genero,rock]),
regla(7,[sonido,balanceado]).

%% 8. Jackson %%
regla(8,[rango,medio]),
regla(8,[genero,metal]).

%% 9. Ibanez %%
regla(9,[rango,medio]),
regla(9,[genero,rock]).

%% 10. BC Rich %%
regla(10,[bajo,presupuesto]),
regla(10,[genero,metal]).

%%% -Resultados posibles por default- %%%

resultado(1,yamaha).
resultado(2,epiphone).
resultado(3,squire).
resultado(4,gibson).
resultado(5,esp).
resultado(6,prs).
resultado(7,fender).
resultado(8,jackson).
resultado(9,epiphone).
resultado(10,bc_rich).

%%% -Preguntas default- %%%

pregunta('¿Buscas aprender guitarra?',[quiero,aprender]),
pregunta('¿No tienes idea que marca elegir?',[no,tengo,idea]),
pregunta('¿Tienes bajo presupuesto?',[bajo,presupuesto]),
pregunta('¿Buscas una guitarra de rango medio?',[rango,medio]),
pregunta('¿Te gustaría convertirte en profesional?',[volverme,profesional]),
pregunta('¿Te importa poco que genero tocar?',[cualquier,genero]),
pregunta('¿Te gustaría especializarte en tocar rock?',[genero,rock]),
pregunta('¿Te gustaría especializarte en tocar metal?',[genero,metal]),
pregunta('¿Prefieres un sonido cálido?',[sonido,calido]),
pregunta('¿Prefieres un sonido balanceado?',[sonido,balanceado]).



