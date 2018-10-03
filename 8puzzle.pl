% Author:
% Date: 15-Aug-18

nodo([[2,8,3],[1,6,4],[7,0,5]], [[2,8,3],[1,6,4],[0,7,5]]).
nodo([[2,8,3],[1,6,4],[7,0,5]], [[2,8,3],[1,0,4],[7,6,5]]).
nodo([[2,8,3],[1,6,4],[7,0,5]], [[2,8,3],[1,6,4],[7,5,0]]).

nodo([[2,8,3],[1,6,4],[0,7,5]], [[2,8,3],[0,6,4],[1,7,5]]).

nodo([[2,8,3],[1,0,4],[7,6,5]], [[2,8,3],[0,1,4],[7,6,5]]).
nodo([[2,8,3],[1,0,4],[7,6,5]], [[2,0,3],[1,8,4],[7,6,5]]).
nodo([[2,8,3],[1,0,4],[7,6,5]], [[2,8,3],[1,4,0],[7,6,5]]).

profundidad(NODO):- writeln(NODO),
                    nodo(NODO,HIJOS),
                    profundidad(HIJOS).