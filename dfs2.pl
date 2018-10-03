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

busqueda(BUSCA,BUSCA):- writeln(NODO),
                        writeln(' fue encontrado').
                        NODOSHIJOS \= BUSCA,
                        busqueda(NODOSHIJOS,BUSCA).

busqueda(NODOS,BUSCA):- writeln(NODO),
                        nodo(NODO,NODOSHIJOS),
                        busqueda(NODOSHIJOS,BUSCA).