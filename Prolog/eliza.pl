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