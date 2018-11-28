% sintoma(sensacion,quemazon,garganta).
% sintoma(liquido,caliente,garganta).
% 
:- dynamic sintoma/1.
:- dynamic sintoma/2.
:- dynamic sintoma/3.

acidez_estomacal:-  sintoma(sensacion,quemazon,garganta),
                    sintoma(liquido,caliente,garganta),
                    writeln('El paciente presenta acidez estomacal.').

diabetes:-  sintoma(aliento,olor,frutas),
            sintoma(cansancio,inusual),
            sintoma(hambre,descontrolada),
            sintoma(orina,frecuencia),
            sintoma(sensacion,quemazon,garganta),
            sintoma(perdida,peso),
            sintoma(vista,borrosa),
            writeln('El paciente presenta diabetes.').

estrenimiento:- sintoma(distensión,colicos,abdominales),
                sintoma(sangrado,rectal),
                sintoma(heces,pequeñas),
                sintoma(esfuerzo,evacuar),
                writeln('El paciente presenta estreñimiento.').

obesidad:-  sintoma(dificultad,dormir),
            sintoma(ronquido),
            sintoma(apnea),
            sintoma(dolor,espalda,articulaciones),
            sintoma(sudor,excesivo),
            sintoma(falta,aire),
            sintoma(sueño,durante,dia),
            writeln('El paciente presenta obesidad.').

colon_irritable:-   sintoma(distensión,colicos,abdominales),
                    sintoma(alteracion,ritmo,intestinal),
                    writeln('El paciente presenta colon irritable.').

diarrea:-   sintoma(distensión,colicos,abdominales),
            sintoma(urgencia,evacuacion),
            sintoma(perdida,control,intestinal),
            writeln('El paciente presenta diarrea.').

gases:- sintoma(eructo),
        sintoma(distensión,colicos,abdominales),
        writeln('El paciente presenta gases.').

ulcera_gastroduodenal:- sintoma(dolor,abdomen,comer),
                        sintoma(dolor,abdomen,nocturno),
                        sintoma(perdida,peso),
                        sintoma(distensión,colicos,abdominales),
                        sintoma(eructo),
                        sintoma(nausea),
                        sintoma(vomito),
                        writeln('El paciente presenta ulcera gastroduodenal.').
                        
varicela:- sintoma(malestar,general),
           sintoma(dolor,muscular),
           sintoma(temperatura,alta),
           sintoma(prurito),
           writeln('El pcaciente tiene varicela').

malaria:- sintoma(malestar,general),
          sintoma(dolor,cabeza),
          sintoma(fatiga),
          sintoma(molestia,abdominal),
          sintoma(dolor,muscular),
          writeln('el paciente tiene malaria').

otitis_media_aguda:- sintoma(dolor,oidos),
                     sintoma(despertar,brusco),
                     sintoma(llanto,desconsolado),
                     sintoma(irritabilidad),
                     sintoma(sordera,parcial),
                     writeln('El paciente tiene otitis media aguda').

rubeola:-            sintoma(malestar,general),
                     sintoma(dolor,muscular),
                     sintoma(dolor,cabeza),
                     sintoma(temperatura,alta),
                     sintoma(prurito),
                     wrinteln('El paciente tiene rubeola posnatal').

tuberculosis_pulmonar:- sintoma(perdida,peso),
                        sintoma(fiebre),
                        sintoma(temperatura,alta),
                        sintoma(tos),
                        sintoma(dolor,toracico),
                        sintoma(excesiva,sudoracion),
                        sintoma(expulsa,flemas),
                        sintoma(expulsa,sangre),
                        sintoma(falta,de,aire),
                        sintoma(fatiga),
                        writeln('El paciente tiene tuberculosis pulmonar').
                        
infarto_miocardio:- sintoma(dolor,toracico),
                    sintoma(mareo,intenso),
                    sintoma(sudor),
                    sintoma(nauseas),
                    sintoma(vomito),
                    writeln('El paciente tiene un infarto de miocardio').

insuficiencia_cardiaca:- sintoma(dificultad,respirar),
                         sintoma(fatiga),
                         sintoma(hinchazon,piernas),
                         sintoma(ritmo,acelerado),
                         writeln('El paciente tiene insuficiencia cardiaca').

varices:- sintoma(vasos,inflamados),
          sintoma(hematomas),
          sintoma(picazon),
          sintoma(hinchazon,piernas),
          sintoma(cambio,color,piel),
          writeln('El paciente tiene varices').

muerte_subita_cardiaca:- sintoma(perdida,conocimiento),
                         sintoma(ausencia,respuesta),
                         sintoma(paro,respiratorio),
                         sintoma(perdida,color,piel),
                         writeln('El paciente tiene muerte subita cardiaca').

pericarditis:- sintoma(dolor,pecho),
               sintoma(fatiga),
               sintoma(fiebre),
               sintoma(dificultad,respirar),
               writeln('El paciente tiene pericarditis').
               
agorafobia:- sintoma(sensacion,ahogo),
             sintoma(precion,pecho),
             sintoma(sudoracion),
             sintoma(mareos),
             sintoma(palpitaciones),
             sintoma(sensacion,temer,vida),
             writeln('El paciente tiene agorafobia').

ansiedad:- sintoma(sensacion,nerviosismo),
           sintoma(agitacion),
           sintoma(sentimiento,peligro),
           sintoma(panico),
           writeln('El paciente tiene ataques de ansiedad').

ansiedad:- sintoma(hiperventilacion),
           sintoma(tension),
           sintoma(aumento,frecuencia,cardiaca),
           sintoma(sentimiento,fatalidad),
           sintoma(problemas,concentracion),
           writeln('El paciente tiene ataques de ansiedad').

bulimia:- sintoma(comer,mucho),
          sintoma(comer,chucherias),
          sintoma(vomitos,inducidos),
          sintoma(estreñimiento),
          sintoma(depresion),
          writeln('El paciente tiene bulimia').

dislexia:- sintoma(dificultad,escribir),
           sintoma(dificultad,memorizar),
           sintoma(dificultad,comprender),
           sintoma(deterioro,habla),
           writeln('El paciente tiene dislexia').

esquizofrenia:- sintoma(agitacion),
                sintoma(agrecion),
                sintoma(falta,autocontrol),
                sintoma(delirio),
                sintoma(amnesia),
                sintoma(alucinaciones),
                sintoma(miedo),
                writeln('El paciente tiene esquizofrenia').

sindorome_diogenes:- sintoma(aislamiento,social),
                     sintoma(abandono,higiene,personal),
                     sintoma(deterioro,fisico),
                     sintoma(acumulacion),
                     writeln('El paciente padece del sindrome de diogenes').

vigorexia:- sintoma(obsecion,cuerpo),
            sintoma(distorsion,imagen,corporal),
            sintoma(tendencia,automedicacion),
            sintoma(cuerpo,desproporcionado),
            writeln('El paciente padece de vigorexia').
            
gripe :-
    sintoma(temperatura, leve),
    sintoma(fatiga),
    sintoma(escalofrio),
    sintoma(escurrimiento, nasal),
    sintoma(tos),
    writeln('El paciente tiene gripe en su etapa inicial').

gripe :-
    sintoma(temperatura, alta),
    sintoma(fatiga),
    sintoma(sudoracion),
    sintoma(infeccion, garganta),
    sintoma(escurrimiento, nasal),
    writeln('El paciente tiene gripe avanzada').

conjuntivitis :-
    sintoma(ojos, llorosos),
    sintoma(laganas),
    sintoma(ardor, ojos),
    sintoma(infeccion, ojos),
    writeln('El paciente tiene conjuntivitis').

apendicitis :-
    sintoma(dolor, abdominal),
    sintoma(diarrea),
    sintoma(nauseas),
    sintoma(vomito),
    sintoma(escalofrio),
    writeln('El paciente tiene apendicitis').

resaca :-
    sintoma(dolor, cabeza),
    sintoma(sed),
    sintoma(irritado),
    sintoma(falta, apetito),
    sintoma(sueno),
    writeln('El paciente tiene resaca').

migrana :-
    sintoma(dolor, intenso, cabeza),
    sintoma(sensibilidad, luz),
    sintoma(sensibilidad, sonido),
    sintoma(destellos, luz),
    writeln('El paciente tiene migrana').

acne :-
    sintoma(comedones, cerrados),
    sintoma(comedones, abiertos),
    sintoma(irregularidades, sensibles, rojas),
    sintoma(granos, pus),
    sintoma(bultos, grandes, piel),
    sintoma(bultos, dolorosos, piel),
    writeln('El paciente tiene acné').


dermatitis_atopica :-
    sintoma(picazon),
    sintoma(hinchazon),
    sintoma(enrojecimiento, continuo),
    writeln('El paciente tiene dermatitis atópica').

hiperhidrosis :-
    sintoma(sudoracion, excesiva, manos),
    sintoma(sudoracion, excesiva, pies),
    sintoma(sudoracion, excesiva, axilas),
    sintoma(sudoracion, excesiva, cara),
    sintoma(sudoracion, nocturna),
    writeln('El paciente tiene hiperhidrosis').

psoriasis :-
    sintoma(manchas, rojas, piel),
    sintoma(puntos, escamados, piel),
    sintoma(piel, seca),
    sintoma(piel, agrietada),
    sintoma(picazon),
    sintoma(ardor),
    sintoma(dolor),
    sintoma(unas, engrosadas),
    sintoma(unas, acanaladas),
    sintoma(articulaciones, inflamadas),
    sintoma(articulaciones, rigidas),
    writeln('El paciente tiene psoriasis').


candidiasis :-
    sintoma(genitales, picazon, intensa),
    sintoma(genitales, hinchazon),
    sintoma(genitales, placas, blanquecinas),
    sintoma(orinar, ardor),
    sintoma(orinar, dolor),
    sintoma(copula, molestia),
    sintoma(copula, dolor),
    writeln('El paciente tiene candidiasis').

eccema :-
    sintoma(piel, seca),
    sintoma(picazon, grave),
    sintoma(manchas, rojas),
    sintoma(manchas, marron),
    sintoma(bultos, pequenos),
    sintoma(piel, engrosada),
    sintoma(piel, agrietada),
    sintoma(piel, escamosa),
    sintoma(piel, carne, viva),
    sintoma(piel, sensible),
    writeln('El paciente tiene eccema').

hirsutismo :-
    sintoma(voz, grave),
    sintoma(calvicie),
    sintoma(acne),
    sintoma(musculos, aumento),
    sintoma(clitoris, agrandamiento),
    writeln('El paciente tiene hirsutismo').

urticaria :-
    sintoma(ronchas, rojas),
    sintoma(ronchas, grandes),
    sintoma(picazon, intensa),
    writeln('El paciente tiene urticaria').
    
cancer_de_piel:- sintoma(aparicion,lunares),
                 sintoma(cambios,lunares,existentes),
                 sintoma(llagas,no,cicatrizan),
                 sintoma(propagacion,pigmentos,manchas),
                 sintoma(inflamacion,piel),
                 sintoma(sensibiliadad,piel),
                 sintoma(dolor,piel),
                 write('El paciente tiene Cáncer de piel').

cancer_de_piel:- sintoma(aparicion,lunares),
                 sintoma(cambios,lunares,existentes),
                 sintoma(llagas,no,cicatrizan),
                 sintoma(propagacion,pigmentos,manchas),
                 sintoma(enrojecimiento,piel),
                 sintoma(sensibiliadad,piel),
                 sintoma(dolor,piel),
                 write('El paciente tiene Cáncer de piel').

cancer_de_pulmon:- sintoma(tos,cronica),
                   sintoma(tos,sangre),
                   sintoma(dolor,pecho),
                   sintoma(ronquera),
                   sintoma(perdida,apetito),
                   sintoma(dificultad,respirar),
                   sintoma(cansancio),
                   sintoma(infecciones,recurrentes),
                   sintoma(aparicion,sibilancias),
                   write('El paciente tiene Cáncer de pulmón').

cancer_de_pulmon:- sintoma(tos,cronica),
                   sintoma(tos,sangre),
                   sintoma(dolor,pecho),
                   sintoma(ronquera),
                   sintoma(perdida,peso),
                   sintoma(dificultad,respirar),
                   sintoma(cansancio),
                   sintoma(infecciones,recurrentes),
                   sintoma(aparicion,sibilancias),
                   write('El paciente tiene Cáncer de pulmón').

leucemia:- sintoma(perdida,peso),
           sintoma(fiebre),
           sintoma(sudor,nocturno),
           sintoma(cansancio),
           sintoma(perdida,apetito),
           sintoma(debilidad),
           sintoma(mareos),
           sintoma(aparicion,moretones),
           sintoma(sangrado,encias),
           writeln('El paciente tiene Leucemia').

leucemia:- sintoma(perdida,peso),
           sintoma(fiebre),
           sintoma(sudor,nocturno),
           sintoma(cansancio),
           sintoma(perdida,apetito),
           sintoma(debilidad),
           sintoma(mareos),
           sintoma(aparicion,moretones),
           sintoma(sangrado,nariz),
           writeln('El paciente tiene Leucemia').

melanoma:- sintoma(aparicion,lunares),
           sintoma(inflamacion,piel),
           sintoma(irritacion,piel),
           sintoma(lunar,borde,dentado),
           sintoma(lunar,azulado),
           writeln('el paciente tiene Melanoma').

melanoma:- sintoma(aparicion,lunares),
           sintoma(inflamacion,piel),
           sintoma(irritacion,piel),
           sintoma(lunar,asimetrico),
           sintoma(lunar,borde,dentado),
           sintoma(lunar,rojizo),
           writeln('el paciente tiene Melanoma').

osteosarcoma:- sintoma(hinchazon,cerca,hueso),
               sintoma(dolor,oseo),
               sintoma(fractura,hueso),
               writeln('El paciente tiene Osteosarcoma').

osteosarcoma:- sintoma(hinchazon,cerca,hueso),
               sintoma(dolor,articular),
               sintoma(lesion,hueso),
               writeln('El paciente tiene Osteosarcoma').

tumores_cerebrales:- sintoma(dolor,cabeza),
                     sintoma(vomito),
                     sintoma(problemas,vista),
                     sintoma(perdida,movimiento),
                     sintoma(dificultad,mantener,equilibrio),
                     sintoma(dificultad,hablar),
                     sintoma(confusion),
                     sintoma(cambios,personalidad),
                     sintoma(convulsiones),
                     sintoma(problemas,audicion),
                     writeln('El paciente tiene Tumor Cerebral').

tumores_cerebrales:- sintoma(dolor,cabeza),
                     sintoma(nauseas),
                     sintoma(problemas,vista),
                     sintoma(perdida,sensibilidad),
                     sintoma(dificultad,mantener,equilibrio),
                     sintoma(dificultad,hablar),
                     sintoma(confusion),
                     sintoma(convulsiones),
                     writeln('El paciente tiene Tumor Cerebral').


diagnostico:- acidez_estomacal.

diagnostico:- diabetes.

diagnostico:- estrenimiento.

diagnostico:- obesidad.

diagnostico:- colon_irritable.

diagnostico:- diarrea.

diagnostico:- gases.

diagnostico:- ulcera_gastroduodenal.

diagnostico:- varicela.

diagnostico:- malaria.

diagnostico:- otitis_media_aguda.

diagnostico:- rubeola.

diagnostico:- tuberculosis_pulmonar.

diagnostico:- infarto_miocardio.

diagnostico:- insuficiencia_cardiaca.

diagnostico:- varices.

diagnostico:- muerte_subita_cardiaca.

diagnostico:- pericarditis.

diagnostico:- agorafobia.

diagnostico:- ansiedad.

diagnostico:- bulimia.

diagnostico:- dislexia.

diagnostico:- esquizofrenia.

diagnostico:- sindorome_diogenes.

diagnostico:- vigorexia.

diagnostico:- gripe.

diagnostico:- conjuntivitis.

diagnostico:- apendicitis.

diagnostico:- resaca.

diagnostico:- migrana.

diagnostico:- acne.

diagnostico:- dermatitis_atopica.

diagnostico:- hiperhidrosis.

diagnostico:- psoriasis.

diagnostico:- candidiasis.

diagnostico:- eccema.

diagnostico:- hirsutismo.

diagnostico:- urticaria.

diagnostico:- cancer_de_piel.

diagnostico:- cancer_de_pulmon.

diagnostico:- leucemia.

diagnostico:- melanoma.

diagnostico:- osteosarcoma.

diagnostico:- tumores_cerebrales.

diagnostico:- writeln('Falta de información').

lectura:- write('>'),
          readln(LINEA),
          writeln(LINEA),
          procesar(LINEA),
          diagnostico.
          
procesar([ART,SUJETO,VERBO,OBJETO,ADJ]):- member(ART,[el,la,los,las]),
                                          member(SUJETO,[paciente,persona,personas,pacientes]),
                                          member(VERBO,[tiene,presenta,padece,sufre]),
                                          assert(sintoma(OBJETO,ADJ)).

                                          
procesar([ART,SUJETO,VERBO,OBJETO]):- member(ART,[el,la,los,las]),
                                          member(SUJETO,[paciente,persona,personas,pacientes]),
                                          member(VERBO,[tiene,presenta,padece,sufre]),
                                          assert(sintoma(OBJETO)).
                                          
procesar([ART,SUJETO,VERBO,OBJETO,ADJ,AUX]):- member(ART,[el,la,los,las]),
                                          member(SUJETO,[paciente,persona,personas,pacientes]),
                                          member(VERBO,[tiene,presenta,padece,sufre]),
                                          assert(sintoma(OBJETO,ADJ,AUX)).
                                          
borrar:- retractall(sintoma(_)),
         retractall(sintoma(_,_)),
         retractall(sintoma(_,_,_)).