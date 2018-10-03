% Author:
% Date: 17-Sep-18

obtener_estado([[0,B,C],[D,E,F],[G,H,I]],X):- append([[[A,B,C],[0,E,F],[G,H,I]],
                                              [[A,0,C],[D,E,F],[G,H,I]]],X).

obtener_estado([[A,0,C],[D,E,F],[G,H,I]],X):- append([[[A,B,0],[D,E,F],[G,H,I]],
                                              [[A,B,C],[D,0,F],[G,H,I]]],X),
                                              append(X,[[0,B,C],[D,E,F],[G,H,I]],Y).

obtener_estado([[A,B,0],[D,E,F],[G,H,I]],X):- append([[[A,0,C],[D,E,F],[G,H,I]]],
                                              [[A,B,C],[D,E,0],[G,H,I]],X).

obtener_estado([[A,B,C],[0,E,F],[G,H,I]],X):- append([[A,B,C],[D,0,F],[G,H,I]],
                                              [[A,B,C],[D,E,F],[0,H,I]],X).

obtener_estado([[A,B,C],[D,0,F],[G,H,I]],X):- append([[[A,0,C],[D,E,F],[G,H,I]],
                                              [[A,B,C],[0,E,F],[G,H,I]]],X),
                                              append(X,[[A,B,C],[D,E,0],[G,H,I]],Y).

obtener_estado([[A,B,C],[D,E,0],[G,H,I]],X):-

obtener_estado([[A,B,C],[D,E,F],[0,H,I]],X):-

obtener_estado([[A,B,C],[D,E,F],[G,0,I]],X):-

obtener_estado([[A,B,C],[D,E,F],[G,H,0]],X):-