% Author:
% Date: 10-Sep-18

nodo(a,b).
nodo(a,c).
nodo(a,d).
nodo(c,e).
nodo(c,f).

costo(a,100).
costo(b,50).
costo(c,30).
costo(d,20).
costo(e,10).
costo(f,5).

nodos_hojas(X):- nodo(P,X),
                 not(nodo(X,_)).
                 
% findall(N,nodos_hojas(N),NODOS).
% NODOS = [b,e,f,d]

