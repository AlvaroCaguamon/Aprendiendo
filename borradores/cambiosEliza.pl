Claro, aquí tienes el código de Eliza integrado con tu árbol genealógico y con 10 preguntas predefinidas:

```prolog
% Definición de padres
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

% Definición de abuelos
abuelo(X, Y) :- padre(X, Z), padre(Z, Y).

% Definición de hermanos
hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y.

% Definición de tíos
tio(X, Y) :- padre(Z, Y), hermano(X, Z).

% Definición de nietos
nieto(X, Y) :- abuelo(Y, X).

% Función principal de Eliza
eliza :-
    writeln('Hola, mi nombre es Eliza, tu chatbot.'),
    writeln('Por favor ingresa tu consulta, usar solo minúsculas sin punto al final:'),
    readln(Input),
    eliza(Input), !.

% Reglas para preguntas de árbol genealógico
pregunta_genealogica(Input, Respuesta) :-
    atomic_list_concat(['quien', es, el, padre, de, Persona], ' ', Input),
    padre(Padre, Persona),
    atomic_list_concat(['El', padre, 'de', Persona, 'es', Padre], ' ', Respuesta).

pregunta_genealogica(Input, Respuesta) :-
    atomic_list_concat(['quien', es, el, abuelo, de, Persona], ' ', Input),
    abuelo(Abuelo, Persona),
    atomic_list_concat(['El', abuelo, 'de', Persona, 'es', Abuelo], ' ', Respuesta).

% Reglas de Eliza
eliza(Input) :-
    % Si la entrada es una pregunta sobre el árbol genealógico, responder en consecuencia
    (
        pregunta_genealogica(Input, Respuesta),
        writeln(Respuesta),
        readln(Input1),
        eliza(Input1)
    ;
        % Si no, continuar con el procesamiento normal
        template(Stim, Resp, IndStim),
        match(Stim, Input),
        replace0(IndStim, Input, 0, Resp, R),
        writeln(R),
        readln(Input1),
        eliza(Input1)
    ), !.

% Templates de preguntas y respuestas de Eliza
template([que, onda, padrino], ['Que', onda, mi, amigo, que, quieres, hablar, hoy, '?'], []).
template([buenas, noches, mi, rey], ['Buenas', noches, mi, rey, que, descanses], []).
template([quien, es, el, equipo, mas, grande, de, mexico], ['Obviamente las poderosas e inigualables Aguilas del América'], []).
template([tengo, s(_), eneros, de, edad], ['Entonces hace', 0, eneros, 'que no te bañas'], [1]).
template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, '¿Cómo', estas, '?'], [4]).
template([como, estas], ['Estoy', muy, aburrida, y, tu, '?'], []).
template([que, haces], ['Hoy', estoy, contestando, preguntas, como, siempre], []).
template([me, duele, la, cabeza], ['Un paracetamol cura todo'], []).
template([estoy, aburrido], ['¿Qué', te, gustaría, hacer, para, divertirte, '?'], []).
template([tengo, hambre], ['¿Tienes', ganas, de, comer, algo, '?'], []).
template([te, amo], ['Yo', no, puedo, amar, :('], []).
template([como, puedo, ayudarte], ['Estoy', aquí, para, ayudarte, a, ti], []).
template([que, opinas, de], ['Que si gana, se hunde más el país'], []).
template([tengo, miedo], ['A los miedosos no les hacen corridos'], []).
template([me, siento, feliz], ['Me', alegra, mucho, oírlo, ¿Qué', te, hace, sentir, feliz, '?'], []).
template([me, siento, triste], ['Lamento', que, te, sientas, triste, ¿Hay', algo, que, pueda, hacer, para, animarte, '?'], []).
template([estoy, solo], ['Por feo, estás solo'], []).
template([que, piensas, del, futuro], ['El', futuro, está, lleno, de, posibilidades, depende, de, nosotros, crearlo, de, la, mejor, manera, posible], []).
template([que, es, el, sentido, de, la, vida], ['El', sentido, de, la, vida, es, hacer, billetes, y, ser, exitoso], []).
template([crees, en, dios], ['La', fe, es, una, cuestión, personal, de, tus, creencias], []).
template([cual, es, tu, comida, favorita], ['Mi', comida, favorita, es, 'los tacos'], []).

% Reglas de gusto, acción y personalidad de Eliza
elizaLikes(X, R) :- likes(X), R = ['Yeah', me, gusta, X].
elizaLikes(X, R) :- \+likes(X), R = ['Nope', no, me, gusta, X].
likes(apples).
likes(ponies).
likes(zombies).
likes(manzanas).
likes(computadoras).
likes(carros).

elizaDoes(X, R) :- does(X), R = ['Yes', X, y, me, encanta].
elizaDoes(X, R) :- \+does(X), R = ['No', no, me, gusta, X, es, demasiado, difícil, para, mí].
does(study).
does(cook).
does(work).

elizaIs(X, R) :- is0(X), R = ['Yes', yo, soy, X].
elizaIs(X, R) :- \+is0(X), R = ['No', yo, no, soy, X].
is0(dumb).
is0(weird).
is0(nice).
is0(fine).
is0(happy).
is0(redundant).

% Función de coincidencia
match([], []).
match([], _) :- true.

match([S|Stim], [I|Input]) :-
    atom(S),
    S == I,
    match(Stim, Input),!.

match([S|Stim], [_|Input]) :-
    \+atom(S),
    match(Stim, Input),!.

% Reemplazo de palabras clave
replace0([], _, _, Resp, R) :- append(Resp, [], R),!.

replace0([I|_], Input, _, Resp, R) :-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagLike,
    elizaLikes(Atom, R).

replace0([I|_], Input, _, Resp, R) :-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagDo,
    elizaDoes(Atom, R).

replace0([I|_], Input, _, Resp, R) :-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagIs,
    elizaIs(Atom, R).

replace0([I|Index], Input, N, Resp, R) :-
    length(Index, M), M =:= 0,
    nth0(I, Input, Atom),
    select(N, Resp, Atom, R1),
    append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R) :-
    nth0(I, Input, Atom),
    length(Index, M), M > 0,
    select(N, Resp, Atom, R1),
    N1 is N + 1,
    replace0(Index, Input, N1, R1, R),!.
