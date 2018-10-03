% Author:
% Date: 19-Sep-18

obtener_hijos(NODO,HIJOS):- obtener_estados(NODO,HIJOS).

obtener_estados([[0,B,C],[D,E,F],[G,H,I]],HIJOS):- append([[[B,0,C],[D,E,F],[G,H,I]]],
                                                   [[[D,B,C],[0,E,F],[G,H,I]]],HIJOS).

obtener_estados([[B,0,C],[D,E,F],[G,H,I]],HIJOS):- append([[[0,B,C],[D,E,F],[G,H,I]]],
                                                   [[[B,E,C],[D,0,F],[G,H,I]]],X),
                                                   append(X,[[[B,C,0],[D,E,F],[G,H,I]]],HIJOS).
                                                   
obtener_estados([[C,B,0],[D,E,F],[G,H,I]],HIJOS):- append([[[C,0,B],[D,E,F],[G,H,I]]],
                                                   [[[C,B,F],[D,E,0],[G,H,I]]],HIJOS).
                                                   
obtener_estados([[C,B,A],[0,E,F],[G,H,I]],HIJOS):- append([[[C,B,A],[E,0,F],[G,H,I]]],
                                                   [[[C,B,A],[0,E,F],[G,H,I]]],HIJOS).
                                                   
                                                   
                                                   
crear_arbol([]).

crear_arbol([NODO|R]):- obtener_hijos(NODO,HIJOS),
                        agregar_hijos_al_arbol(NODO,HIJOS),
                        append(HIJOS,R,NUEVA),
                        crear_arbol(NUEVA).
                        
agregar_hijos_al_arbol(NODO,[]).
agregar_hijos_al_arbol(NODO,[P|RESTO]):- obtener_nodos_padres(F,PADRES),
                                         not(member(F,PADRES)),
                                         assert(arbol(NODO,F)),
                                         agregar_hijos_al_arbol(NODO,RESTO).
                                                   