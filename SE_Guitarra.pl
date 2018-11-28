%%% Sistema experto en guitarras eléctricas. %%%

main:-
    intro,
    resetear_respuestas,
    encontrar_marca(Marca),
    descripcion(Marca),
    nl.

intro:-
    writeln('¿Qué marca de guitarra debería comprar?'),
    writeln('Escriba el número de la respuesta con un punto al final.'),
    nl.

encontrar_marca(Marca):-
    marca(Marca),
    !.

:- dynamic(ejecucion/2).

resetear_respuestas:-
    retract(ejecucion(_,_)),
    fail.
resetear_respuestas.

marca(yamaha):-
    porque(quiero_aprender).

marca(yamaha):-                                                           porque(no_tengo_idea).

marca(epiphone):-
    porque(estoy_bajo_presupuesto),
    que_genero(rock).

marca(squire):-
    porque(estoy_bajo_presupuesto),
    que_genero(cualquiera).

marca(gibson):-
    porque(busco_volverme_profesional),
    que_genero(cualquiera),
    que_tipo_sonido(calido).

marca(esp):-
    porque(busco_volverme_profesional),
    que_genero(metal).

marca(prs):-
    porque(busco_volverme_profesional),
    que_genero(cualquiera),
    que_tipo_sonido(balanceado).

marca(fender):-
    porque(busco_volverme_profesional),
    que_genero(rock),
    que_tipo_sonido(balanceado).

marca(jackson):-
    porque(busco_instrumento_rango_medio),
    que_genero(metal).

marca(ibanez):-
    porque(busco_instrumento_rango_medio),
    que_genero(rock).

marca(epiphone):-
    porque(busco_instrumento_rango_medio),
    que_genero(cualquiera).

marca(bc_rich):-
    porque(estoy_bajo_presupuesto),
    que_genero(metal).


pregunta(porque):-
    writeln('¿Porqué deseas adquirir una guitarra eléctrica?').

pregunta(que_genero):-
    writeln('¿Qué genero te gustaría tocar?').

pregunta(que_tipo_sonido):-
    writeln('¿Qué tipo de sonido te gustaría tener?').


respuesta(quiero_aprender):-
    writeln('Quiero aprender.').

respuesta(no_tengo_idea):-
    writeln('No tengo idea...').

respuesta(estoy_bajo_presupuesto):-
    writeln('Me encuentro bajo presupuesto.').

respuesta(rock):-
    writeln('Rock.').

respuesta(cualquiera):-
    writeln('Cualquier genero.').

respuesta(busco_volverme_profesional):-
    writeln('Busco volverme profesional.').

respuesta(calido):-
    writeln('Un sonido cálido.').

respuesta(balanceado):-
    writeln('Un sonido balanceado.').

respuesta(metal):-
    writeln('Metal.').

respuesta(busco_instrumento_rango_medio):-
    writeln('Busco un instrumento de rango medio.').


descripcion(yamaha):-
    writeln('Yamaha'),
    writeln('Marca que maneja paquetes ya con amplificador y a veces incluso lecciones.'),
    writeln('Ideal para principiantes.').

descripcion(epiphone):-
    writeln('Epiphone'),
    writeln('Marca subsidiaria de Gibson que ofrece los productos de esta a menor precio.'),
    writeln('Ideal para alguien buscando un modelo icónico como Les Paul o Explorer sin pagar mucho.').

descripcion(squire):-
    writeln('Squire'),
    writeln('Marca subsidiaria de Fender que ofrece los productos de esta a menos precio.'),
    writeln('Ideal para alguien buscando un modelo icónico como Stratocaster o Telecaster sin pagar mucho.').

descripcion(gibson):-
    writeln('Gibson'),
    writeln('Marca famosa por los modelos Les Paul, SG, entre otros que ofrecen instrumentos de gran calidad.'),
    writeln('Ideal para el guitarrista ya experimentado que busca estar cerca de sus ídolos y que está dispuesto a pagar un poco más.').

descripcion(esp):-
    writeln('ESP'),
    writeln('Marca que busca crear guitarras con aptitudes para el rock y derivados. Preferida de muchos artistas.'),
    writeln('Ideal para el guitarrista que se especializa en generos de rock y metal, con dinero para invertir.').

descripcion(prs):-
    writeln('PRS'),
    writeln('Marca que ha ido en constante crecimiento por la excelente calidad y sobre todo versatilidad de sus instrumentos.'),
    writeln('Ideal para el guitarrista que toca varios generos, que busca un tono sólido y un instrumento bien hecho.').

descripcion(fender):-
    writeln('Fender'),
    writeln('Igual que Gibson, se ha consolidado como una marca invaluable de guitarras eléctricas a través de los años por sus modelos legendarios.'),
    writeln('Ideal para aquel que busca utilizar una Stratocaster o Telecaster de verdad, pagando un poco más de dinero por ellas.').

descripcion(jackson):-
    writeln('Jackson'),
    writeln('Marca icónica de muchos guitarristas de heavy metal con precios relativamente accesibles sin sacrificar tanto la calidad.'),
    writeln('Ideal para ti si el heavy metal es lo tuyo y buscas un instrumento confiable.').

descripcion(ibanez):-
    writeln('Ibanez'),
    writeln('Marca que se especializa en hacer guitarras que ofrecen rapidez de ejecución, muchas veces diseñadas para quiens gustan de hacer solos.'),
    writeln('Ideal si buscas una guitarra que se especialice en rock.').

descripcion(bc_rich):-
    writeln('BC Rich'),
    writeln('Marca que se especializa en hacer instrumentos para heavy metal a un precio muy accesible, famosa por Kerry King de Slayer.'),
    writeln('Ideal si buscas una guitarra para heavy metal a un precio muy bajo.').


porque(Respuesta):-
    ejecucion(porque,Respuesta).
porque(Respuesta):-
    \+ ejecucion(porque,_),
    preguntar(porque,Respuesta,[quiero_aprender,no_tengo_idea,estoy_bajo_presupuesto,busco_instrumento_rango_medio,busco_volverme_profesional]).

que_genero(Respuesta):-
    ejecucion(que_genero,Respuesta).
que_genero(Respuesta):-
    \+ ejecucion(que_genero,_),
    preguntar(que_genero,Respuesta,[cualquiera, rock, metal]).

que_tipo_sonido(Respuesta):-
    ejecucion(que_tipo_sonido,Respuesta).
que_tipo_sonido(Respuesta):-
    \+ ejecucion(que_tipo_sonido,_),
    preguntar(que_tipo_sonido,Respuesta,[calido,balanceado]).

respuestas([],_).
respuestas([P|R],Indice):-
    write(Indice),
    write(' '),
    respuesta(P),
    SigIndice is Indice + 1,
    respuestas(R, SigIndice).

parsear(0,[P|_],P).
parsear(Indice,[P|R],Resultado):-
    Indice > 0,
    SigIndice is Indice - 1,
    parsear(SigIndice,R,Resultado).

preguntar(Pregunta,Respuesta,Opciones):-
    pregunta(Pregunta),
    respuestas(Opciones,0),
    read(Indice),
    parsear(Indice,Opciones,Resultado),
    asserta(ejecucion(Pregunta,Resultado)),
    Resultado = Respuesta.

    