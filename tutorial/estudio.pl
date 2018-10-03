% Author:
% Date: 11-Sep-18

% predicados

:- dynamic sobre/2.
sobre(x,piso).
sobre(z,y).
sobre(y,x).
sobre(nada,z).
sobre(w,piso).
sobre(nada,w).

% clausulas

quitar(Y,X):-
              sobre(nada,Y),
              sobre(Y,X),
              retract(sobre(Y,X)),
              assert(sobre(Y,piso)),
              assert(sobre(nada,X)),
              write('Se quitó el bloque '),
              write(Y),
              write(' del bloque '),
              writeln(X).

% quitar(z,y).

quitar(Y,X):- sobre(Y,X),
              sobre(Z,Y),
              quitar(Z,Y),
              quitar(Y,X).

colocar(Y,X):- sobre(nada,Y),
               sobre(nada,X),
               retract(sobre(nada,X)),
               assert(sobre(Y,X)),
               retract(sobre(nada,Y)),
               assert(sobre(Y,Z)),
               write('Se puso el bloque '),
               write(Y),
               write(' en el bloque '),
               writeln(X).
               
              