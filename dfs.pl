% Author:
% Date: 13-Aug-18

% secci�n de predicados
nodo(1,2).
nodo(1,3).
nodo(2,7).
nodo(2,8).
nodo(3,5).
nodo(3,6).
nodo(8,9).
nodo(8,10).

% secci�n de cl�usulas
profundidad(NODO):- writeln(NODO),
                    nodo(NODO, HIJOS),
                    profundidad(HIJOS).