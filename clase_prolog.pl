% Author:
% Date: 05-Nov-18

% declaracion de predicados
% informacion
persona([juan,35,saltillo,casado,4000]).
persona([luis,16,monclova,soltero,1000]).
persona([maria,40,saltillo,soltera,6000]).
persona([roberto,25,monclova,casado,2000]).
persona([dolores,50,monclova,casada,30000]).

solteros(X):-
             persona([X,_,_,ESTADOCIVIL,_]),
             member(ESTADOCIVIL,[soltero,soltera]).
             
mayores_edad(NOMBRE):-
             persona([NOMBRE,EDAD,_,_,_]),
             EDAD >= 18.
             
menores_edad(NOMBRE):-
             persona([NOMBRE,EDAD,_,_]),
             EDAD < 18.
             
% menores_edad(NOMBRE):-
%              not(mayores_edad(NOMBRE)).
             
rango_sueldo(MIN,MAX,NOMBRE):-
                              persona([NOMBRE,_,_,_,SUELDO]),
                              SUELDO >= MIN,
                              SUELDO =< MAX.
                              
% datos(NOMBRE):-
%                persona([NOMBRE,EDAD,CIUDAD,ESTADO,SUELDO]),
%                writeln(EDAD),
%                writeln(CIUDAD),
%                writeln(ESTADO),
%                writeln(SUELDO).
               
% datos(NOMBRE):-
%                persona([NOMBRE|INFORMACION]),
%                writeln(INFORMACION).
               
datos(DATO):-
             persona(X),
             member(DATO,X),
             writeln(X),false.

consulta(X):-
             persona(X),
             recorrer(X).
             
recorrer([]):-
              writeln(' ').
             
recorrer([P|R]):-
                 write(P),
                 write(' '),
                 recorrer(R).