% Author:
% Date: 13-Aug-18

% sección de predicados
nodo(1,2).
nodo(1,3).
nodo(2,7).
nodo(2,8).
nodo(3,5).
nodo(3,6).
nodo(8,9).
nodo(8,10).

% sección de cláusulas
profundidad(NODO):- writeln(NODO),
                    nodo(NODO, HIJOS),
                    profundidad(HIJOS).