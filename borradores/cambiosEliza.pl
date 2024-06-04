eliza:-	writeln('Hola , mi nombre es  Eliza tu  chatbot,
	por favor ingresa tu consulta,
	usar solo minúsculas sin . al final:'),
	readln(Input),
	eliza(Input),!.
eliza(Input):- Input == ['Adios'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input):- Input == ['Adios', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	eliza(Input1), !.

    :- discontiguous template/3.
    :- discontiguous sintomaEs/2.
:- discontiguous multiSintomaES/4.
:- discontiguous multiSintoma/3.
:- discontiguous causaEs/2.
:- discontiguous tratamientoEs/2.


%"que onda padrino"
template([que, onda, padrino], ['Que', 'onda', 'mi', 'amigo', 'que', 'quieres', 'hablar', 'hoy', '?'], []).
%"buenas noches mi rey"
template([buenas, noches, mi, rey], ['Buenas', 'noches', 'mi', 'rey', 'que', 'descanses', '.'], []).
%quien es el equipo mas grande de mexico
template([quien, es, el, equipo, mas, grande, de, mexico], ['obviamente las poderosas e inigualables aguilas del america','.'],[]).
%tengo variable eneros de edad 
template([tengo, s(_), eneros, de, edad], ['entonces hace ', 0, ' eneros  que no te bañas '], [1]).
%nombre
template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
% "Como estas"
template([como, estas], ['Estoy', 'muy', 'aburrida', 'y', 'tu', '?'], []).
%"Que haces "
template([que, haces], ['Hoy', 'estoy', 'contestando', 'preguntas', 'como', 'siempre' ,'?'], []).
% "Me duele la cabeza"
template([me, duele, la, cabeza], ['un parazetamol cura todo'], []).
% "Estoy aburrido"
template([estoy, aburrido], ['¿Que', 'te', 'gustaria', 'hacer', 'para', 'divertirte', '?'], []).
%  "Tengo hambre"
template([tengo, hambre], ['¿Tienes', 'ganas', 'de', 'comer', 'algo', '?'], []).
%  "Te amo"
template([te, amo], ['Yo', 'no', 'puedo', 'amar', ':(', '.'], []).
%  "Como puedo ayudarte"
template([como, puedo, ayudarte], ['Estoy', 'aqui', 'para', 'ayudarte', 'a', 'ti'], []).
%  "Que opinas de xochitl"
template([que, opinas, de], ['que si gana se hunde mas el pais'], []).
% "Tengo miedo"
template([tengo, miedo], ['A los miedosos no les hacen corridos '], []).
%  "Me siento feliz"
template([me, siento, feliz], ['Me', 'alegra', 'mucho', 'oirlo', '¿Que', 'te', 'hace', 'sentir', 'feliz', '?'], []).
% "Me siento triste"
template([me, siento, triste], ['Lamento', 'que', 'te', 'sientas', 'triste', 'hay', 'algo', 'que', 'pueda','hacer', 'para', 'animarte', '?'], []).
% Template para "Estoy solo"
template([estoy, solo], ['por feo estas solo.'], []).
% "Que piensas del futuro"
template([que, piensas, del, futuro], ['El', 'futuro', 'esta', 'lleno', 'de', 'posibilidades', 'depende','de', 'nosotros', 'crearlo', 'de', 'la', 'mejor', 'manera', 'posible', '.'], []).
% "Que es el sentido de la vida"
template([que, es, el, sentido, de, la, vida], ['El', 'sentido', 'de', 'la', 'vida', 'es', 'Hacer billetes y ser exitoso '], []).
% "Crees en dios"
template([crees, en, dios], ['La', 'fe', 'es', 'una', 'cuestion', 'personal',  'de', 'tus', 'creencias', '.'], []).
%  "Cual es tu comida favorita"
template([cual, es, tu, comida, favorita], ['Mi', 'comida', 'favorita', 'es','los tacos' ], []).

%%------------------------------------------TEMPLATES DE MIS ENFERMEDADES----------------------------
template([que, es, la, bronquitis,?], ['La bronquitis es una inflamación de los bronquios, las vías respiratorias
 que transportan aire hacia adentro y fuera de los pulmones. Esta inflamación causa hinchazón y estrechamiento de las vías respiratorias, lo que dificulta la 
respiración y produce tos, a menudo con mucosidad. La bronquitis puede ser aguda o crónica.'], []).

template([tipos, de, bronquitis],['Bronquitis aguda: Es la forma mas comun de bronquitis. Suele durar menos de tres semanas y 
generalmente es causada por una infección viral, como un resfriado o la gripe.
Bronquitis cronica: Es una enfermedad pulmonar obstructiva crónica (EPOC) que se caracteriza por una inflamación y estrechamiento 
persistentes de las vías respiratorias. La bronquitis crónica generalmente se debe a la exposición a largo plazo
 a irritantes, como el humo del cigarrillo.'], []).

template([origen, de, bronquitis],['bronquitis no se conoce con certeza, se cree que ha existido durante miles de anos. 
Las primeras descripciones de la enfermedad se remontan a la antigua Grecia y Roma. A lo largo de la historia,'],[]).
%%-----------------------------------------------------

template([que, es, la, colitis, ulcerosa,?],['ulcerosa es una enfermedad inflamatoria intestinal (EII) que causa inflamación y úlceras en el revestimiento del intestino grueso (colon) y el recto. Esta inflamación
 puede provocar dolor abdominal, diarrea (a menudo con sangre), sangrado rectal y urgencia para defecar. '],[]).

template([origen, de , colitis, ulcerosa],['Se cree que es el resultado de una combinación de factores genéticos, inmunológicos y ambientales. 
Las personas con antecedentes familiares de colitis ulcerosa tienen un mayor riesgo de desarrollar la enfermedad. '],[]).

template([diagnosticar, colitis, ulcerosa],['•	Análisis de sangre: Los análisis de sangre pueden buscar signos de inflamación y anemia.
•	Análisis de heces: Los análisis de heces pueden buscar sangre, pus y otros marcadores de inflamación.
•	Endoscopia: Una endoscopia es un procedimiento que permite al médico ver el interior del intestino grueso con una cámara delgada y flexible.
•	Colonoscopia: Una colonoscopia es un tipo de endoscopia que examina todo el intestino grueso.
'],[]).

%%--------------------------------------------------------
template([que, es, la, colera],['El cólera es una enfermedad diarreica aguda causada por la bacteria Vibrio cholerae.
 La bacteria se transmite a través del agua o los alimentos contaminados con heces humanas. El cólera se caracteriza por diarrea acuosa severa, vómitos y calambres musculares. 
Si no se trata, el cólera puede provocar deshidratación grave y shock, lo que puede ser mortal.'],[]).


template([origen, de, la, colera],['. La primera descripción de la enfermedad se remonta a la India en el siglo XVI. El cólera 
se ha extendido por todo el mundo a través del comercio y los viajes, y ha causado varias pandemias devastadoras'],[]).

template([diagnosticar, colera],['El diagnóstico del cólera generalmente se basa en los síntomas y en un análisis de heces para detectar la bacteria Vibrio cholerae.
 En algunos casos, se puede realizar una prueba de sangre para detectar anticuerpos contra la bacteria.'],[]).

 %%---------------------causas, sintomas y demas bronquitis ------------------------------
 %% sintomas bronquitis
	
	template([dime, los, sintomas, de, bronquitis, '.'], ListaSintomas, []):-
		findall(Sintomas, sintomasbronquitis(Sintomas), ListaSintomas).
	
	template([cuales, son, los, sintomas, de, bronquitis, '.'], ListaSintomas, []):-
		findall(Sintomas, sintomasbronquitis(Sintomas), ListaSintomas).
	
	template([sintomas, de, bronquitis, '.'], ListaSintomas, []):-
		findall(Sintomas, sintomasbronquitis(Sintomas), ListaSintomas).
	
	
	
	% Sintomas del bronquitis interactivas 
	
	template([s(_), es, un, sintoma, '.'], [flagSintomas], [0]).%%.
	template([s(_), es, un, sintoma, '?'], [flagSintomas], [0]).
	template([el, s(_), es, un, sintoma, del, bronquitis, '.'], [flagSintomas], [1]).
	template([el, s(_), es, un, sintoma, del, bronquitis, '?'], [flagSintomas], [1]).
	template([la, s(_), es, un, sintoma, del, bronquitis, '.'], [flagSintomas], [1]).
	template([la, s(_), es, un, sintoma, del, bronquitis, '?'], [flagSintomas], [1]).
	template([los, s(_), es, un, sintoma, del, bronquitis, '.'], [flagSintomas], [1]).
	template([los, s(_), es, un, sintoma, del, bronquitis, '?'], [flagSintomas], [1]).
	template([las, s(_), es, un, sintoma, del, bronquitis, '.'], [flagSintomas], [1]).
	template([las, s(_), es, un, sintoma, del, bronquitis, '?'], [flagSintomas], [1]).
	template([s(_), es, un, sintoma, del, bronquitis, '.'], [flagSintomas], [0]).
	template([s(_), es, un, sintoma, del, bronquitis, '?'], [flagSintomas], [0]).

	template([tengo, s(_), ',', (_), y, (_), '.'], [flagMultiSintoma], [1, 3, 5]).


    % Causas de bronquitis
	
	template([causas, del, bronquitis, '.'], ListaCausas, []):-
		findall(Causas, causasbronquitis(Causas), ListaCausas).

	template([dime, las, causas, del, bronquitis, '.'], ListaCausas, []):-
		findall(Causas, causasbronquitis(Causas), ListaCausas).

	template([cuales, son, las, causas, del, bronquitis, '.'], ListaCausas, []):-
		findall(Causas, causasbronquitis(Causas), ListaCausas).

	% Causas del bronquitis
	template([la, s(_), es, una, causa, '.'], [flagCausas], [1]).
	template([la, s(_), es, una, causa, '?'], [flagCausas], [1]).
	template([los, s(_), son, una, causa, '.'], [flagCausas], [1]).
	template([las, s(_), son, una, causa, '.'], [flagCausas], [1]).
	template([los, s(_), son, una, causa, '?'], [flagCausas], [1]).
	template([las, s(_), son, una, causa, '?'], [flagCausas], [1]).
	template([s(_), es, una, causa, '.'], [flagCausas], [0]).
	template([s(_), es, una, causa, '?'], [flagCausas], [0]).
	template([los, s(_), son, una, causa, del, bronquitis, '.'], [flagCausas], [1]).%%
	template([las, s(_), son, una, causa, del, bronquitis, '.'], [flagCausas], [1]).
	template([los, s(_), son, una, causa, del, bronquitis, '?'], [flagCausas], [1]).
	template([las, s(_), son, una, causa, del, bronquitis, '?'], [flagCausas], [1]).
	template([s(_), es, una, causa, del, bronquitis, '.'], [flagCausas], [0]).
	template([s(_), es, una, causa, del, bronquitis, '?'], [flagCausas], [0]).

	% Tratamientos de bronquitis
	
	template([tratamientos, del, bronquitis, '.'], ['El tratamiento de la bronquitis depende del tipo y la gravedad de la enfermedad. La bronquitis aguda generalmente no requiere tratamiento
     específico y se resuelve por sí sola en unas pocas semanas. Sin embargo, los síntomas pueden tratarse con medicamentos de venta libre, 
    como analgésicos para el dolor en el pecho y medicamentos para la tos'], []).
	
	template([dime, los, tratamientos, del, bronquitis, '.'], ListaTratamientos, []):-
		findall(Tratamientos, tratamientobronquitis(Tratamientos), ListaTratamientos).

	template([cuales, son, los, tratamientos, del, bronquitis, '.'], ListaTratamientos, []):-
		findall(Tratamientos, tratamientobronquitis(Tratamientos), ListaTratamientos).

	% Tratamientos de bronquitis
	
	template([la, s(_), es, un, tratamiento, para, el, bronquitis, '.'], [flagTratamientos], [1]).
	template([el, s(_), es, un, tratamiento, para, el, bronquitis, '.'], [flagTratamientos], [1]).%%
	template([las, s(_), es, un, tratamiento, para, el, bronquitis, '.'], [flagTratamientos], [1]).
	template([los, s(_), es, un, tratamiento, para, el, bronquitis, '.'], [flagTratamientos], [1]).
	template([s(_), es, un, tratamiento, para, el, bronquitis, '.'], [flagTratamientos], [0]).
	
	template([s(_), es, un, tratamiento, '?'], [flagSintomas], [0]).
	template([la, s(_), es, un, tratamiento, para, el, bronquitis, '?'], [flagTratamientos], [1]).
	template([el, s(_), es, un, tratamiento, para, el, bronquitis, '?'], [flagTratamientos], [1]).
	template([las, s(_), es, un, tratamiento, para, el, bronquitis, '?'], [flagTratamientos], [1]).
	template([los, s(_), es, un, tratamiento, para, el, bronquitis, '?'], [flagTratamientos], [1]).
	template([s(_), es, un, tratamiento, para, el, bronquitis, '?'], [flagSintomas], [0]).


% FlagSintomas
	sintomaEs(X, R):- sintomasbronquitis(X), R = ['Claro', X, es, un, sintoma, del, 'bronquitis', mas, sin, embargo, recuerda, que, el, 'bronquitis', requiere, diagnostico, medico].
	sintomaEs(X, R):- \+sintomasbronquitis(X), R = ['No', X, no, es, un, sintoma, del, 'bronquitis'].
	sintomasbronquitis('Dificultad para respirar').
	sintomasbronquitis('lentitudDeMovimientos').
	sintomasbronquitis('tos').
	sintomasbronquitis('Sibilancias').
	sintomasbronquitis('dolorPecho').
	sintomasbronquitis('fiebre').
	sintomasbronquitis('fatiga').
	



% Multisintoma
	multiSintomaES(X, Y, Z, R):- multiSintoma(X, Y, Z), R = ['Claro', X, Y, y, Z, son, sintomas, de, bronquitis].
	multiSintomaES(X, Y, Z, R):- \+multiSintoma(X, Y, Z), R = ['No', X, Y, y, Z, no, son, sintomas, de, bronquitis].
	multiSintoma('tos', 'fiebre', 'fatiga').

	% FlagCausas
	causaEs(X, R):- causasbronquitis(X), R = ['Si', X, es, una, causa, del, 'bronquitis'].
	causaEs(X, R):- \+causasbronquitis(X), R = ['No', X, no, es, una, causa, del, 'bronquitis'].
	causasbronquitis('infecciones').
	causasbronquitis('irritantes').
	causasbronquitis('asma').

	% FlagTratamientos
	tratamientoEs(X, R):- tratamientobronquitis(X), R = ['Si', X, es, un, tratamiento, del, 'bronquitis'].
	tratamientoEs(X, R):- \+tratamientobronquitis(X), R = ['No', X, no, es, un, tratamiento, del, 'bronquitis'].
	tratamientobronquitis('broncodilatadores').
	tratamientobronquitis('levodopa').
	tratamientobronquitis('esteroides inhalado').
	tratamientobronquitis('terapia pulmonar').
	tratamientobronquitis('antibioticos').
	tratamientobronquitis('noFumar').

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
	
	template([tratamientos, del, colitis, '.'], ['El tratamiento de la colitis ulcerosa tiene como objetivo controlar la 
    inflamación, reducir los síntomas y prevenir complicaciones'], []).
	
	template([dime, los, tratamientos, del, colitis, '.'], ListaTratamientos, []):-%%
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
	sintomascolitis('SangradoRectal').
	sintomascolitis('diarrea').
	sintomascolitis('Tenesmo').
	sintomascolitis('dolorPecho').
	sintomascolitis('perdidadepeso').
	



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


%%----------------------templeates con 2 y 3 variables-------------------



template([hola, _], ['Hola', 'como', estas, tu, '?'], []).
template([buendia, _], ['Buendia', 'Como', estas, tu, '?'], []).

template([yo, s(_), yo, soy, s(_),'.'], [por, que, 0, eres, 1, '?'], [1, 4]).
template([yo, s(_), tu, '.'], [why, do, you, 0, me ,'?'], [1]).
template([yo, soy, s(_),'.'], [porque, eres, tu, 0, '?'], [2]).








% pregunta algo que le gusta a eliza
template([te, gustan, las, s(_), _], [flagLike], [3]).
template([te, gustan, los, s(_), _], [flagLike], [3]).

		 % pregunta algo que hace eliza
template([tu, eres, s(_), _], [flagDo], [2]).
% pregunta algo que es eliza
template([que, eres, tu, s(_)], [flagIs], [2]).
template([eres, s(_), '?'], [flagIs], [2]).

template([como, estas, tu, '?'], [yo, estoy, bien, ',', gracias, por, preguntar, '.'], []).

template([yo, pienso, que, _], [bueno, esa, es, tu, opinion], []).
template([porque, _], [esa, no, es, una, buena, razon, '.'], []).
template([i, have, s(_), with, s(_), '.'], ['You', have, to, deal, with, your, 0, and, your, 1, in, a, mature, way, '.'], [2, 4]).
template([i, s(_),  _], [i, can, recommend, you, a, book, about, that, issue], []).
template([please, s(_), _], ['No', i, can, not, help, ',', i, am, just, a, machine], []). 
		 template([tell, me, a, s(_), _], ['No', i, can, not, ',', i, am, bad, at, that], []).

				  
template(_, ['Please', explain, a, little, more, '.'], []). 
% Lo que le gusta a eliza : flagLike
elizaLikes(X, R):- likes(X), R = ['Yeah', i, like, X].
elizaLikes(X, R):- \+likes(X), R = ['Nope', i, do, not, like, X].
likes(apples).
likes(ponies).
likes(zombies).
likes(manzanas).
likes(computadoras).
like(carros).



% lo que hace eliza: flagDo
elizaDoes(X, R):- does(X), R = ['Yes', i, X, and, i, love, it].
elizaDoes(X, R):- \+does(X), R = ['No', i, do, not, X ,'.', it, is, too, hard, for, me].
does(study).
does(cook).
does(work).

% lo que es eliza: flagIs
elizaIs(X, R):- is0(X), R = ['Yes', yo, soy, X].
elizaIs(X, R):- \+is0(X), R = ['No', i, am, not, X].
is0(dumb).
is0(weird).
is0(nice).
is0(fine).
is0(happy).
is0(redundant).

match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), % si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continúo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.

% Eliza likes:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagLike,
	elizaLikes(Atom, R).


    % Sistema is:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagIs,
		sistemaIs(Atom, R).

% Eliza does:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagDo,
	elizaDoes(Atom, R).

% Eliza is:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagIs,
	elizaIs(Atom, R).

replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.

    % Sintomas :
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagSintomas,
		sintomaEs(Atom, R).


        % multiSintomas :
	replace0([I,J,K|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagMultiSintoma,
		nth0(J, Input, Atom2),
		nth0(0, Resp, Y),
		Y == flagMultiSintoma,
		nth0(K, Input, Atom3),
		nth0(0, Resp, Z),
		Z == flagMultiSintoma,
		multiSintomaES(Atom, Atom2, Atom3, R).

	% Causas :
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagCausas,
		causaEs(Atom, R).

	% Tratamientos :
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagTratamientos,
		tratamientoEs(Atom, R).

	% Especialistas :
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagEspecialistas,
		especialistaEs(Atom, R).