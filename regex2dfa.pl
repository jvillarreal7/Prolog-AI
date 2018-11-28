% Author: Jaime Villarreal
% Date: 20-Oct-18

%%%% Parseo de expresión regular (WIP) ???? %%%%

inicializar_regex(EXPRESION):-
    retractall(simbolo(_)),
    agregar_simbolo_regex(SIMBOLO).

agregar_simbolo_regex([]).
agregar_simbolo_regex([SIMBOLO|RESTANTE]):-
    assert(simbolo(SIMBOLO)),
    agregar_simbolo_regex(RESTANTE).

% Alfabeto de símbolos.

:- agregar_simbolo_regex([0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]).

%%%% Patrones en predicados %%%%

% 1) R1
patron(1,1,2,nulo).
patron(1,2,3,r).
patron(1,3,4,nulo).

% 2) R1|R2
patron(2,1,2,nulo).
patron(2,2,3,r1).
patron(2,3,6,nulo).
patron(2,1,4,nulo).
patron(2,4,5,r2).
patron(2,5,6,nulo).

% 3) R1R2
patron(3,1,2,r1).
patron(3,2,3,nulo).
patron(3,3,4,r2).

% 4) R1*
patron(4,1,2,nulo).
patron(4,2,3,r1).
patron(4,3,4,nulo).
patron(4,1,4,nulo).
patron(4,3,2,nulo).

% 5) R1+
patron(5,1,2,nulo).
patron(5,2,3,r1).
patron(5,3,4,nulo).
patron(5,3,2,nulo).

%%%% Patrones en listas %%%%

% 1) R1
patron_lista(1,[[1,2,nulo],[2,3,r],[3,4,nulo]]).

% 2) R1|R2
patron_lista(2,[[1,2,nulo],[2,3,r],[3,6,nulo],[1,4,nulo],[4,5,r2],[5,6,nulo]]).

% 3) R1R2
patron_lista(3,[[1,2,r1],[2,3,nulo],[3,4,r2]]).

% 4) R1*
patron_lista(4,[[1,2,nulo],[2,3,r1],[3,4,nulo],[1,4,nulo],[3,2,nulo]]).

% 5) R1+
patron_lista(5,[[1,2,nulo],[2,3,r1],[3,4,nulo],[3,2,nulo]]).

%%%% Cláusulas %%%%

recorrer([],INDICE).

recorrer([[N1,N2,C]|R],INDICE):-
                               X is N1 + INDICE,
                               Y is N2 + INDICE,
                               write(X),
                               write(' '),
                               writeln(Y),
                               recorrer(R,INDICE).

% To-do: Pasar length del primer patron.
renumerar(PATRON):- patron(PATRON,AUTOMATA),
                    recorrer(AUTOMATA,10).
                    
unir_automatas(A1,A2,AUTOMATA):-
                         patron(A1,AUTOMATA1),
                         length(AUTOMATA1,N),
                         writeln(N),
                         patron(A2,AUTOMATA2),
                         append(AUTOMATA1,AUTOMATA2,AUTOMATA).