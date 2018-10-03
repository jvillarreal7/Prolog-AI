nodo(a,b).
nodo(a,c).
nodo(a,d).
nodo(b,g).
nodo(b,h).
nodo(g,i).
nodo(g,j).
nodo(c,e).
nodo(c,f).
nodo(d,k).

busqueda(NODO):- writeln(NODO),
                 nodo(NODO,NODOSHIJOS),
                 busqueda(NODOSHIJOS).