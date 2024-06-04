%%---------------------causas, sintomas y demas colitis ulcerosa ------------------------------

%% sintomas colitis
	
	template([dime, los, sintomas, de, colitis, '.'], ListaSintomas, []):-
		findall(Sintomas, sintomascolitis(Sintomas), ListaSintomas).
	
	template([cuales, son, los, sintomas, de, colitis, '.'], ListaSintomas, []):-
		findall(Sintomas, sintomascolitis(Sintomas), ListaSintomas).
	
	template([sintomas, de, colitis, '.'], ListaSintomas, []):-
		findall(Sintomas, sintomascolitis(Sintomas), ListaSintomas).
	
	
	
	% Sintomas del colitis interactivas 
	
	template([s(_), es, un, sintoma, '.'], [flagSintomas], [0]).%%.
	template([s(_), es, un, sintoma, '?'], [flagSintomas], [0]).
	template([el, s(_), es, un, sintoma, del, colitis, '.'], [flagSintomas], [1]).
	template([el, s(_), es, un, sintoma, del, colitis, '?'], [flagSintomas], [1]).
	template([la, s(_), es, un, sintoma, del, colitis, '.'], [flagSintomas], [1]).
	template([la, s(_), es, un, sintoma, del, colitis, '?'], [flagSintomas], [1]).
	template([los, s(_), es, un, sintoma, del, colitis, '.'], [flagSintomas], [1]).
	template([los, s(_), es, un, sintoma, del, colitis, '?'], [flagSintomas], [1]).
	template([las, s(_), es, un, sintoma, del, colitis, '.'], [flagSintomas], [1]).
	template([las, s(_), es, un, sintoma, del, colitis, '?'], [flagSintomas], [1]).
	template([s(_), es, un, sintoma, del, colitis, '.'], [flagSintomas], [0]).
	template([s(_), es, un, sintoma, del, colitis, '?'], [flagSintomas], [0]).

	template([tengo, s(_), ',', (_), y, (_), '.'], [flagMultiSintoma], [1, 3, 5]).


    % Causas de colitis
	
	template([causas, del, colitis, '.'], ListaCausas, []):-
		findall(Causas, causascolitis(Causas), ListaCausas).

	template([dime, las, causas, del, colitis, '.'], ListaCausas, []):-
		findall(Causas, causascolitis(Causas), ListaCausas).

	template([cuales, son, las, causas, del, colitis, '.'], ListaCausas, []):-
		findall(Causas, causascolitis(Causas), ListaCausas).

	% Causas del colitis
	template([la, s(_), es, una, causa, '.'], [flagCausas], [1]).
	template([la, s(_), es, una, causa, '?'], [flagCausas], [1]).
	template([los, s(_), son, una, causa, '.'], [flagCausas], [1]).
	template([las, s(_), son, una, causa, '.'], [flagCausas], [1]).
	template([los, s(_), son, una, causa, '?'], [flagCausas], [1]).
	template([las, s(_), son, una, causa, '?'], [flagCausas], [1]).
	template([s(_), es, una, causa, '.'], [flagCausas], [0]).
	template([s(_), es, una, causa, '?'], [flagCausas], [0]).
	template([los, s(_), son, una, causa, del, colitis, '.'], [flagCausas], [1]).%%
	template([las, s(_), son, una, causa, del, colitis, '.'], [flagCausas], [1]).
	template([los, s(_), son, una, causa, del, colitis, '?'], [flagCausas], [1]).
	template([las, s(_), son, una, causa, del, colitis, '?'], [flagCausas], [1]).
	template([s(_), es, una, causa, del, colitis, '.'], [flagCausas], [0]).
	template([s(_), es, una, causa, del, colitis, '?'], [flagCausas], [0]).

	% Tratamientos de colitis
	
	template([tratamientos, del, colitis, '.'], ['El tratamiento de la colitis depende del tipo y la gravedad de la enfermedad. La colitis aguda generalmente no requiere tratamiento
     específico y se resuelve por sí sola en unas pocas semanas. Sin embargo, los síntomas pueden tratarse con medicamentos de venta libre, 
    como analgésicos para el dolor en el pecho y medicamentos para la tos'], []).
	
	template([dime, los, tratamientos, del, colitis, '.'], ListaTratamientos, []):-
		findall(Tratamientos, tratamientocolitis(Tratamientos), ListaTratamientos).

	template([cuales, son, los, tratamientos, del, colitis, '.'], ListaTratamientos, []):-
		findall(Tratamientos, tratamientocolitis(Tratamientos), ListaTratamientos).

	% Tratamientos de colitis
	
	template([la, s(_), es, un, tratamiento, para, el, colitis, '.'], [flagTratamientos], [1]).
	template([el, s(_), es, un, tratamiento, para, el, colitis, '.'], [flagTratamientos], [1]).%%
	template([las, s(_), es, un, tratamiento, para, el, colitis, '.'], [flagTratamientos], [1]).
	template([los, s(_), es, un, tratamiento, para, el, colitis, '.'], [flagTratamientos], [1]).
	template([s(_), es, un, tratamiento, para, el, colitis, '.'], [flagTratamientos], [0]).
	
	template([s(_), es, un, tratamiento, '?'], [flagSintomas], [0]).
	template([la, s(_), es, un, tratamiento, para, el, colitis, '?'], [flagTratamientos], [1]).
	template([el, s(_), es, un, tratamiento, para, el, colitis, '?'], [flagTratamientos], [1]).
	template([las, s(_), es, un, tratamiento, para, el, colitis, '?'], [flagTratamientos], [1]).
	template([los, s(_), es, un, tratamiento, para, el, colitis, '?'], [flagTratamientos], [1]).
	template([s(_), es, un, tratamiento, para, el, colitis, '?'], [flagSintomas], [0]).


% FlagSintomas colitis
	sintomaEs(X, R):- sintomascolitis(X), R = ['Claro', X, es, un, sintoma, del, 'colitis', mas, sin, embargo, recuerda, que, el, 'colitis', requiere, diagnostico, medico].
	sintomaEs(X, R):- \+sintomascolitis(X), R = ['No', X, no, es, un, sintoma, del, 'colitis'].
	sintomascolitis('Dificultad para respirar').
	sintomascolitis('SangradoRectal').
	sintomascolitis('diarrea').
	sintomascolitis('Tenesmo').
	sintomascolitis('dolorPecho').
	sintomascolitis('perdidadepeso').
	sintomascolitis('fatiga').
	



% Multisintoma colitis
	multiSintomaES(X, Y, Z, R):- multiSintoma(X, Y, Z), R = ['Claro', X, Y, y, Z, son, sintomas, de, colitis].
	multiSintomaES(X, Y, Z, R):- \+multiSintoma(X, Y, Z), R = ['No', X, Y, y, Z, no, son, sintomas, de, colitis].
	multiSintoma('diarrea', 'sangradoRectal', 'fatiga').

	% FlagCausas colitis
	causaEs(X, R):- causascolitis(X), R = ['Si', X, es, una, causa, del, 'colitis'].
	causaEs(X, R):- \+causascolitis(X), R = ['No', X, no, es, una, causa, del, 'colitis'].
	causascolitis('genetica').
	causascolitis('sistemainmunologico').
	causascolitis('estres').

	% FlagTratamientos colitis
	tratamientoEs(X, R):- tratamientocolitis(X), R = ['Si', X, es, un, tratamiento, del, 'colitis'].
	tratamientoEs(X, R):- \+tratamientocolitis(X), R = ['No', X, no, es, un, tratamiento, del, 'colitis'].
	tratamientocolitis('aminosalicilatos').
	tratamientocolitis('corticosteroides').
	tratamientocolitis('inmunomoduladores').
	tratamientocolitis('Cirugia').
	tratamientocolitis('evitarGrasa').
	tratamientocolitis('noFumar').

%%_----------------------------------------------------------


%%---------------------causas, sintomas y demas colera ------------------------------

%% sintomas colera

template([dime, los, sintomas, de, colera, '.'], ListaSintomas, []):-
    findall(Sintomas, sintomascolera(Sintomas), ListaSintomas).

template([cuales, son, los, sintomas, de, colera, '.'], ListaSintomas, []):-
    findall(Sintomas, sintomascolera(Sintomas), ListaSintomas).

template([sintomas, de, colera, '.'], ListaSintomas, []):-
    findall(Sintomas, sintomascolera(Sintomas), ListaSintomas).

% Sintomas del colera interactivas

template([s(_), es, un, sintoma, '.'], [flagSintomas], [0]).
template([s(_), es, un, sintoma, '?'], [flagSintomas], [0]).
template([el, s(_), es, un, sintoma, del, colera, '.'], [flagSintomas], [1]).
template([el, s(_), es, un, sintoma, del, colera, '?'], [flagSintomas], [1]).
template([la, s(_), es, un, sintoma, del, colera, '.'], [flagSintomas], [1]).
template([la, s(_), es, un, sintoma, del, colera, '?'], [flagSintomas], [1]).
template([los, s(_), es, un, sintoma, del, colera, '.'], [flagSintomas], [1]).
template([los, s(_), es, un, sintoma, del, colera, '?'], [flagSintomas], [1]).
template([las, s(_), es, un, sintoma, del, colera, '.'], [flagSintomas], [1]).
template([las, s(_), es, un, sintoma, del, colera, '?'], [flagSintomas], [1]).
template([s(_), es, un, sintoma, del, colera, '.'], [flagSintomas], [0]).
template([s(_), es, un, sintoma, del, colera, '?'], [flagSintomas], [0]).

template([tengo, s(_), ',', (_), y, (_), '.'], [flagMultiSintoma], [1, 3, 5]).

% Causas de colera

template([causas, del, colera, '.'], ListaCausas, []):-
    findall(Causas, causascolera(Causas), ListaCausas).

template([dime, las, causas, del, colera, '.'], ListaCausas, []):-
    findall(Causas, causascolera(Causas), ListaCausas).

template([cuales, son, las, causas, del, colera, '.'], ListaCausas, []):-
    findall(Causas, causascolera(Causas), ListaCausas).

% Causas del colera
template([la, s(_), es, una, causa, '.'], [flagCausas], [1]).
template([la, s(_), es, una, causa, '?'], [flagCausas], [1]).
template([los, s(_), son, una, causa, '.'], [flagCausas], [1]).
template([las, s(_), son, una, causa, '.'], [flagCausas], [1]).
template([los, s(_), son, una, causa, '?'], [flagCausas], [1]).
template([las, s(_), son, una, causa, '?'], [flagCausas], [1]).
template([s(_), es, una, causa, '.'], [flagCausas], [0]).
template([s(_), es, una, causa, '?'], [flagCausas], [0]).
template([los, s(_), son, una, causa, del, colera, '.'], [flagCausas], [1]).
template([las, s(_), son, una, causa, del, colera, '.'], [flagCausas], [1]).
template([los, s(_), son, una, causa, del, colera, '?'], [flagCausas], [1]).
template([las, s(_), son, una, causa, del, colera, '?'], [flagCausas], [1]).
template([s(_), es, una, causa, del, colera, '.'], [flagCausas], [0]).
template([s(_), es, una, causa, del, colera, '?'], [flagCausas], [0]).

% Tratamientos de colera

template([tratamientos, del, colera, '.'], ['El tratamiento del cólera incluye la rehidratación con soluciones de electrolitos y agua, y en casos graves, el uso de antibióticos para reducir la duración de la enfermedad.'], []).

template([dime, los, tratamientos, del, colera, '.'], ListaTratamientos, []):-
    findall(Tratamientos, tratamientocolera(Tratamientos), ListaTratamientos).

template([cuales, son, los, tratamientos, del, colera, '.'], ListaTratamientos, []):-
    findall(Tratamientos, tratamientocolera(Tratamientos), ListaTratamientos).

% Tratamientos de colera

template([la, s(_), es, un, tratamiento, para, el, colera, '.'], [flagTratamientos], [1]).
template([el, s(_), es, un, tratamiento, para, el, colera, '.'], [flagTratamientos], [1]).
template([las, s(_), es, un, tratamiento, para, el, colera, '.'], [flagTratamientos], [1]).
template([los, s(_), es, un, tratamiento, para, el, colera, '.'], [flagTratamientos], [1]).
template([s(_), es, un, tratamiento, para, el, colera, '.'], [flagTratamientos], [0]).

template([s(_), es, un, tratamiento, '?'], [flagSintomas], [0]).
template([la, s(_), es, un, tratamiento, para, el, colera, '?'], [flagTratamientos], [1]).
template([el, s(_), es, un, tratamiento, para, el, colera, '?'], [flagTratamientos], [1]).
template([las, s(_), es, un, tratamiento, para, el, colera, '?'], [flagTratamientos], [1]).
template([los, s(_), es, un, tratamiento, para, el, colera, '?'], [flagTratamientos], [1]).
template([s(_), es, un, tratamiento, para, el, colera, '?'], [flagSintomas], [0]).

% FlagSintomas colera
sintomaEs(X, R):- sintomascolera(X), R = ['Claro', X, es, un, sintoma, del, 'colera', mas, sin, embargo, recuerda, que, el, 'colera', requiere, diagnostico, medico].
sintomaEs(X, R):- \+sintomascolera(X), R = ['No', X, no, es, un, sintoma, del, 'colera'].
sintomascolera('diarrea').
sintomascolera('vomitos').
sintomascolera('deshidratacion').
sintomascolera('calambres').
sintomascolera('sed intensa').

% Multisintoma colera
multiSintomaES(X, Y, Z, R):- multiSintoma(X, Y, Z), R = ['Claro', X, Y, y, Z, son, sintomas, de, colera].
multiSintomaES(X, Y, Z, R):- \+multiSintoma(X, Y, Z), R = ['No', X, Y, y, Z, no, son, sintomas, de, colera].
multiSintoma('diarrea', 'vomitos', 'deshidratacion').

% FlagCausas colera
causaEs(X, R):- causascolera(X), R = ['Si', X, es, una, causa, del, 'colera'].
causaEs(X, R):- \+causascolera(X), R = ['No', X, no, es, una, causa, del, 'colera'].
causascolera('agua contaminada').
causascolera('alimentos contaminados').
causascolera('higiene deficiente').

% FlagTratamientos colera
tratamientoEs(X, R):- tratamientocolera(X), R = ['Si', X, es, un, tratamiento, del, 'colera'].
tratamientoEs(X, R):- \+tratamientocolera(X), R = ['No', X, no, es, un, tratamiento, del, 'colera'].
tratamientocolera('rehidratacion').
tratamientocolera('antibioticos').
tratamientocolera('soluciones electroliticas').

%%________________________________________________________________________
% Datos del árbol genealógico
% Datos del árbol genealógico
padre(gilberto, alvaro).
padre(gilberto, armando).
padre(gilberto, gilbertojr).
padre(alvaro, erik).
padre(alvaro, alvaro). 
padre(armando, mandin).
padre(armando, fernando).
padre(cesar, erik).
padre(alejandra, erik).
padre(chucho, erik).
padre(rosa, carmen).
padre(rosa, dolores).
padre(rosa, teresita).
padre(camilo, carmen).  
padre(camilo, dolores).
padre(camilo, teresita).

% Reglas del árbol genealógico
abuelo(X, Y):- padre(X, Z), padre(Z, Y).

hermano(X, Y):- padre(Z, X), padre(Z, Y), X \= Y.

tio(X, Y):- padre(Z, Y), hermano(X, Z).

nieto(X, Y):- abuelo(Y, X).

hijo(X, Y):- padre(Y, X).

padres(X, Y, Z):- padre(Y, X), padre(Z, X).

abuelo_de(X, Y):- padre(Z, X), padre(Y, Z).

% Templates y flags para Eliza

% Consulta de padre
template([quien, es, el, padre, de, _], [flagPadre], [5]).
template([dime, quien, es, el, padre, de, _], [flagPadre], [6]).
template([quien, es, mi, padre], [flagPadre], [4]).

% Consulta de abuelo
template([quien, es, el, abuelo, de, _], [flagAbuelo], [5]).
template([dime, quien, es, el, abuelo, de, _], [flagAbuelo], [6]).

% Consulta de hermanos
template([quienes, son, los, hermanos, de, _], [flagHermanos], [5]).
template([dime, quienes, son, los, hermanos, de, _], [flagHermanos], [6]).

% Consulta de tíos
template([quienes, son, los, tios, de, _], [flagTios], [5]).
template([dime, quienes, son, los, tios, de, _], [flagTios], [6]).

% Consulta de nietos
template([quienes, son, los, nietos, de, _], [flagNietos], [5]).
template([dime, quienes, son, los, nietos, de, _], [flagNietos], [6]).

% Consulta de hijos
template([quienes, son, los, hijos, de, _], [flagHijos], [5]).
template([dime, quienes, son, los, hijos, de, _], [flagHijos], [6]).

% Consulta de padres
template([quienes, son, los, padres, de, _], [flagPadres], [5]).
template([dime, quienes, son, los, padres, de, _], [flagPadres], [6]).

% Flags y respuestas
% FlagPadre
padreEs(X, R):- padre(Y, X), R = [Y, es, el, padre, de, X].
padreEs(X, R):- \+padre(_, X), R = ['No', se, quien, es, el, padre, de, X].

% FlagAbuelo
abueloEs(X, R):- abuelo(Y, X), R = [Y, es, el, abuelo, de, X].
abueloEs(X, R):- \+abuelo(_, X), R = ['No', se, quien, es, el, abuelo, de, X].

% FlagHermanos
hermanosEs(X, R):- findall(Y, hermano(Y, X), Lista), R = [Lista, son, los, hermanos, de, X].
hermanosEs(X, R):- \+hermano(_, X), R = ['No', se, quien, son, los, hermanos, de, X].

% FlagTios
tiosEs(X, R):- findall(Y, tio(Y, X), Lista), R = [Lista, son, los, tios, de, X].
tiosEs(X, R):- \+tio(_, X), R = ['No', se, quien, son, los, tios, de, X].

% FlagNietos
nietosEs(X, R):- findall(Y, nieto(Y, X), Lista), R = [Lista, son, los, nietos, de, X].
nietosEs(X, R):- \+nieto(_, X), R = ['No', se, quien, son, los, nietos, de, X].

% FlagHijos
hijosEs(X, R):- findall(Y, hijo(Y, X), Lista), R = [Lista, son, los, hijos, de, X].
hijosEs(X, R):- \+hijo(_, X), R = ['No', se, quien, son, los, hijos, de, X].

% FlagPadres
padresEs(X, R):- findall([Y, Z], padres(X, Y, Z), Lista), R = [Lista, son, los, padres, de, X].
padresEs(X, R):- \+padres(X, _, _), R = ['No', se, quienes, son, los, padres, de, X].


 FlagPadre
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagPadre,
    padreEs(Atom, R).

% FlagAbuelo
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagAbuelo,
    abueloEs(Atom, R).

% FlagHermanos
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagHermanos,
    hermanosEs(Atom, R).

% FlagTios
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagTios,
    tiosEs(Atom, R).

% FlagNietos
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagNietos,
    nietosEs(Atom, R).

% FlagHijos
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagHijos,
    hijosEs(Atom, R).

% FlagPadres
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagPadres,
    padresEs(Atom, R).