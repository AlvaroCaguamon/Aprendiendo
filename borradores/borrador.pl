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
