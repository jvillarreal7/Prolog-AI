% sintoma(temperatura,alta).
% sintoma(escurrimiento,nasal).
% sintoma(cuerpo,cortado).

sintoma(dolor,intenso,cabeza).
sintoma(sensibilidad,luz).
sintoma(sensibilidad,sonido).
sintoma(destellos,luz).

gripa:- sintoma(temperatura,leve),
        sintoma(fatiga),
        sintoma(escalofrio),
        sintoma(escurrimiento,nasal),
        sintoma(tos),
        writeln('El paciente tiene gripe en su etapa inicial').

gripa:- sintoma(temperatura,alta),
        sintoma(fatiga),
        sintoma(sudoracion),
        sintoma(infeccion,garganta),
        sintoma(escurrimiento,nasal),
        writeln('El paciente tiene gripe avanzada').

conjuntivitis:- sintoma(ojos,llorosos),
                sintoma(lagañas),
                sintoma(ardor,ojos),
                sintoma(infeccion,ojos),
                writeln('El paciente tiene conjuntivitis').

apendicitis:-   sintoma(dolor,abdominal),
                sintoma(diarrea),
                sintoma(nauseas),
                sintoma(vomito),
                sintoma(escalofrio),
                writeln('El paciente tiene apendicitis').

resaca:-        sintoma(dolor,cabeza),
                sintoma(sed),
                sintoma(irritado),
                sintoma(falta,apetito),
                sintoma(sueño),
                writeln('El paciente tiene resaca').

migraña:-       sintoma(dolor,intenso,cabeza),
                sintoma(sensibilidad,luz),
                sintoma(sensibilidad,sonido),
                sintoma(destellos,luz),
                writeln('El paciente tiene migraña').

diagnostico:- gripa.

diagnostico:- conjuntivitis.

diagnostico:- apendicitis.

diagnostico:- resaca.

diagnostico:- migraña.

diagnostico:- writeln('Falta de información').