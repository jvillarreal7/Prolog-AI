% Author:
% Date: 20-Aug-18

% predicados

:- dynamic sobre/2.
sobre(a,piso).
sobre(b,a).
sobre(c,b).
sobre(d,c).
sobre(e,d).
sobre(f,e).
sobre(h,f).
sobre(nada,h).
sobre(g,piso).
sobre(nada,g).
figura(f,cilindro).
figura(a,cubo).
figura(b,cubo).
figura(c,piramide).
figura(d,esfera).
sobre(f,piso).
sobre(a,piso).
sobre(b,a).

% clausula

quitar(Y,X):- sobre(nada, Y),
              sobre(Y, X),
              retract(sobre(Y, X)),
              assert(sobre(Y, piso),
              assert(sobre(nada, X)),
              write('Se quitó el bloque '),
              write(Y),
              write('del bloque '),
              writeln(X).
              
quitar(Y,X):- sobre(Y, X),
              sobre(Z, Y),
              quitar(Z, Y),
              quitar(Y, X).
              
colocar(Y,X):- sobre(nada, Y),
               sobre(nada, X),
               sobre(Y, piso),
               retract(sobre(nada, X)),
               assert(sobre(Y,X)),
               retract(sobre(Y, piso)),
               write('Se colocó el bloque '),
               write(Y),
               write(' sobre el bloque '),
               writeln(X).
               
colocar(Y,X):- sobre(nada, Y),
               sobre(nada, X),
               sobre(Y, Z),
               retract(sobre(nada, X)),
               assert(sobre(Y,X)),
               retract(sobre(Y, Z)),
               assert(sobre(nada,Z)),
               write('Se colocó el bloque '),
               write(Y),
               write(' sobre el bloque '),
               writeln(X).
               
colocar(Y,X):- sobre(Z,Y),
               sobre(nada,X),
               quitar(Z,Y),
               colocar(Y,X).

colocar(Y,X):- sobre(Z,Y),
               sobre(W,X),
               quitar(Z,Y),
               quitar(W,X),
               colocar(X,Y).
               
tumbar_todos_piso:- sobre(X,piso),
                    sobre(Y,X),
                    quitar(Y,X),
                    tumbar_todos_piso.
                    
apilar_todos(X):- sobre(nada,X),
                  sobre(Y,piso),
                  sobre(nada,Y),
                  X \= Y,
                  colocar(Y,X),
                  apilar_todos(Y).
                  
apilar_todos(X).

% voltear, bloques_arriba, bloques en el piso
bloques_arriba(X):- sobre(nada,X),
                    sobre(X,Y),
                    Y \= piso.
                    
bloques_piso(X):- sobre(X, piso).

bloques_solos(X): sobre(X, piso),
                  sobre(nada, X).
                  
apilaciones_dos(X,Y):- sobre(nada, Y),
                       sobre(Y,X),
                       sobre(X,piso).
                       
colocar(y,x):- sobre(nada,x),
               sobre(nada,y),
               sobre(y,piso),
               figura(x,tipo),
               not(member(tipo,[esfera,piramide]),
               retract(sobre(y,piso)),
               retract(sobre(nada,x)),
               assert(sobre(y,x)),
               write('Se colocó el bloque '),
               write(y),
               write(' sobre '),
               writeln(x).
               
colocar(y,x):- sobre(nada,x),
               sobre(nada,y),
               figura(x,tipo),
               member(tipo,[esfera,piramide]),
               write('No se puede colocar el bloque '),
               write(y),
               write(' sobre el bloque '),
               write(x).
               
colocar(y,x):- sobre(nada,x),
               sobre(nada,y),
               sobre(y,z),
               z /= piso,
               figura(x,tipo),
               not(member(tipo,[esfera,piramide])),
               retract(sobre(y,z)),
               retract(sobre(nada,x)),
               assert(sobre(y,x)),
               write('Se coloco el bloque '),
               write(y),
               write(' sobre '),
               write(x).
               
               
%incluir color, peso, tamaño (grande,mediano,chico) a los bloques, restricciones: no se puede colocar un objeto pesado sobre uno liviano
% nada encima de esferas y piramides

              