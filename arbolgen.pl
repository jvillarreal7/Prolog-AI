% Author:
% Date: 15-Aug-18

matrimonio(juan, maria).
matrimonio(pedro,josefa).
matrimonio(valentin,dolores).
matrimonio(rosendo, francisca).
hijo(jose,juan).
hijo(martha,juan).
hijo(josefa,juan).
hijo(valeria,pedro).
hijo(roberto,valentin).
hijo(juan,valentin).
hijo(valentin, rosendo).



hermano(ALGUIEN, HERMANOS):- hijo(ALGUIEN, PADRE),
                             hijo(HERMANOS, PADRE),
                             HERMANOS \= ALGUIEN.
                             
padre(ALGUIEN, PADRE):- hijo(ALGUIEN, PADRE),
                        matrimonio(PADRE, MADRE).
                             
madre(ALGUIEN, MADRE):- hijo(ALGUIEN, PADRE),
                        matrimonio(PADRE, MADRE).

% tios paternos
tio(ALGUIEN, TIO):- hijo(ALGUIEN, PADRE),
                    hermano(PADRE, TIO).
                    
% tios maternos
tio(ALGUIEN, TIO):- hijo(ALGUIEN, MADRE),
                    hermano(MADRE, TIO).

% primos
primo(ALGUIEN, PRIMO):- tio(ALGUIEN, TIO),
                        hijo(PRIMO, TIO).
                        
% sobrinos *
sobrino(ALGUIEN, SOBRINO):- hermano(ALGUIEN, HERMANOS),
                            hijo(SOBRINO, HERMANOS).

% abuelo paterno
abuelo(ALGUIEN, ABUELO):- padre(ALGUIEN, PADRE),
                          padre(PADRE, ABUELO).

% abuela paterna
abuelo(ALGUIEN, ABUELA):- hijo(PADRE, ALGUIEN),
                          madre(PADRE, ABUELA).
                          
% abuela paterna
abuelo(ALGUIEN, ABUELO):- madre(ALGUIEN, PADRE),
                          hijo(ABUELO, PADRE).
                          
% abuelo materno
abuelo(ALGUIEN, ABUELO):- madre(ALGUIEN, PADRE),
                          hijo(MADRE, ABUELO).
                          
% abuela materna
abuelo(ALGUIEN, ABUELO):- madre(ALGUIEN, MADRE),
                          madre(MADRE, ABUELA).
                          
% hijos de los hijos varones *
nieto(ALGUIEN, NIETO):- hijo(HIJOS, ALGUIEN),
                        hijo(NIETO, HIJOS).

% hijos de los hijas *
nieto(ALGUIEN, NIETO):- hijo(HIJA, ALGUIEN),
                        matrimonio(YERNO, HIJA),
                        hijo(NIETO, YERNO).

% hijos de nietos varones*
bisnieto(ALGUIEN, BISNIETO):- nieto(ALGUIEN, NIETO),
                               hijo(BISNIETO, NIETO).
                               
% hijos de las nietas*
bisnieto(ALGUIEN, BISNIETO):- nieto(ALGUIEN, NIETA),
                               matrimonio(ESPOSO, NIETA),
                               hijo(BISNIETO, ESPOSO).
                                
bisabuelo(ALGUIEN, BISABUELO):- abuelo(ALGUIEN, ABUELO),
                                hijo(ABUELO, BISABUELO).

% bisnieto *

% clausulas: sobrino, abuelo, nieto, bisabuelo, bisnieto