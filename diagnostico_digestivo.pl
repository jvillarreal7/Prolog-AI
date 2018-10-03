acidez_estomacal:-  sintoma(sensacion,quemazon,garganta),
                    sintoma(liquido,caliente,garganta).

diabetes:-  sintoma(aliento,olor,frutas),
            sintoma(cansancio,inusual),
            sintoma(hambre,descontrolada),
            sintoma(orina,frecuencia),
            sintoma(sensacion,quemazon,garganta)
            sintoma(perdida,peso),
            sintoma(vista,borrosa).

estrenimiento:- sintoma(distensión,colicos,abdominales),
                sintoma(sangrado,rectal),
                sintoma(heces,pequeñas),
                sintoma(esfuerzo,evacuar).

obesidad:-  sintoma(dificultad,dormir),
            sintoma(ronquido),
            sintoma(apnea),
            sintoma(dolor,espalda,articulaciones),
            sintoma(sudor,excesivo),
            sintoma(falta,aire),
            sintoma(sueño,durante,dia).

colon_irritable:-   sintoma(distensión,colicos,abdominales),
                    sintoma(alteracion,ritmo,intestinal).

diarrea:-   sintoma(distensión,colicos,abdominales),
            sintoma(urgencia,evacuacion),
            sintoma(perdida,control,intestinal).

gases:- sintoma(eructo),
        sintoma(distensión,colicos,abdominales).

ulcera_gastroduodenal:- sintoma(dolor,abdomen,comer),
                        sintoma(dolor,abdomen,nocturno),
                        sintoma(perdida,peso),
                        sintoma(distensión,colicos,abdominales),
                        sintoma(eructo),
                        sintoma(nausea),
                        sintoma(vomito).


diagnostico:- acidez_estomacal.

diagnostico:- diabetes.

diagnostico:- estrenimiento.

diagnostico:- obesidad.

diagnostico:- colon_irritable.

diagnostico:- diarrea.

diagnostico:- gases.

diagnostico:- ulcera_gastroduodenal.

diagnostico:- writeln('Falta de información').
