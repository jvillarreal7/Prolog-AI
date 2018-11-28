% Author:
% Date: 07-Nov-18

lista([[1,2,10],[1,10,15,20,34],[20,15],[20,30,40]]).
lista_alfa([[a,b,c],[d,e,f,g,h],[x,y,z]]).

procesar([],LISTA,LISTA).

procesar([P|R],LISTA,RESULTADO):-
                           length(P,L),
                           append(LISTA,[L],NUEVALISTA),
                           procesar(R,NUEVALISTA,RESULTADO).

iniciar:-
         lista(LISTA),
         procesar(LISTA,[],R),
         writeln(R).
         
suma_lista([],[],LISTA,LISTA).

suma_lista([P1|R1],[P2|R2],LISTA,RESULTADO):-
                                             X is P1 + P2,
                                             append(LISTA,[X],NEW),
                                             suma_lista(R1,R2,NEW,RESULTADO).
                                             
suma_matrices([],[],LISTA,LISTA).
                                             
suma_matrices([P1|R1],[P2|R2],LISTA,RESULTADO):-
                                                suma_lista(P1,P2,[],SUMA),
                                                append(LISTA,[SUMA],NEW),
                                                suma_matrices(R1,R2,NEW,RESULTADO).
         