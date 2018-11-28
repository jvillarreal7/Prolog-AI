% Author:
% Date: 17-Oct-18

expresion([0,or,1],mas). % (0|1)+
expresion([[[a,b],*],or,[[c,d],+],+]). % ((ab)*|(cd)+)+

% P1
patron(1,1,2,nulo).
patron(1,2,3,r).
patron(1,3,4,nulo).

% P2
patron(2,1,2,nulo).
patron(2,2,3,nulo).
patron(2,3,4,r1).
patron(2,5,6,r2).
patron(2,2,5,nulo).
patron(2,6,7,nulo).
patron(2,7,8,nulo).

% closures: patron(2,2,N,nulo).  a lista: findall(X,patron(2,2,X,nulo),CLOSURE).

patron2([[1,2,nulo],[2,3,nulo],[2,5,nulo],[3,4,r1],[5,6,r2],[6,7,nulo],[7,8,nulo]]).

patron(1,[[1,2,nulo],[2,3,r],[3,4,nulo]]).
patron(2,[[1,2,nulo],[2,3,nulo],[3,4,r1],[5,6,r2],[4,7,nulo],[6,7,nulo],[7,8,nulo]]).

recorrer([],INDICE).

recorrer([[N1,N2,C]|R],INDICE):-
                               X is N1 + INDICE,
                               Y is N2 + INDICE,
                               write(X),
                               write(' '),
                               writeln(Y),
                               recorrer(R,INDICE).

                
% pasar length del primer patron
renumerar(PATRON):- patron(PATRON,AUTOMATA),
                    recorrer(AUTOMATA,10).

unir_automatas(A1,A2,AUTOMATA):-
                         patron(A1,AUTOMATA1),
                         length(AUTOMATA1,N),
                         writeln(N),
                         patron(A2,AUTOMATA2),
                         append(AUTOMATA1,AUTOMATA2,AUTOMATA).
                         
% convertir_expresion_nfa:-

% delete([a,b,c],b,X).

% nth1(1,[a,b,c],X).

% nth0(1,[a,b,c],X).

% length([a,b,c,d,e,f],X).

% member(a,[a,b,c,d]). (parecido a contains())

% member(X,[a,b,c,d]). regresa todos los elementos de la lista.

% retractall(expresion(_)).

% reverse([a,b,c,d,e,[x,y,z]],X).