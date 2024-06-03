% "Como estas"
template([como, estas], ['Estoy', 'muy', 'aburrida', ',', '¿y', 'tú', '?'], []).

%"Que haces "
template([que, haces], ['Hoy', 'estoy', 'contestando', 'preguntas', 'como', 
'siempre' '?'], []).

% "Me duele la cabeza"
template([me, duele, la, cabeza], ['un parazetamol cura todo'], []).

% "Estoy aburrido"
template([estoy, aburrido], ['¿Qué', 'te', 'gustaría', 'hacer', 'para', 'divertirte', '?'], []).

%  "Tengo hambre"
template([tengo, hambre], ['¿Tienes', 'ganas', 'de', 'comer', 'algo', '?'], []).

%  "Te amo"
template([te, amo], ['Yo', 'no', 'puedo', 'amar', ':(', '.'], []).

%  "Como puedo ayudarte"
template([como, puedo, ayudarte], ['Estoy', 'aquí', 'para', 'ayudarte', 'a', 'ti',], []).

%  "Que opinas de xochitl"
template([que, opinas, de], ['que si gana se hunde mas el pais'], []).

% "Tengo miedo"
template([tengo, miedo], ['A los miedosos no les hacen corridos '], []).

%  "Me siento feliz"
template([me, siento, feliz], ['¡Me', 'alegra', 'mucho', 'oírlo', '!', '¿Qué', 'te', 'hace', 'sentir', 'feliz', '?'], []).

% "Me siento triste"
template([me, siento, triste], ['Lamento', 'que', 'te', 'sientas', 'triste', ',', '¿hay', 'algo', 'que', 'pueda',
'hacer', 'para', 'animarte', '?'], []).

% Template para "Estoy solo"
template([estoy, solo], ['por feo estas solo.'], []).

% "Que piensas del futuro"
template([que, piensas, del, futuro], ['El', 'futuro', 'está', 'lleno', 'de', 'posibilidades', ',', 'depende',
 'de', 'nosotros', 'crearlo', 'de', 'la', 'mejor', 'manera', 'posible', '.'], []).

% "Que es el sentido de la vida"
template([que, es, el, sentido, de, la, vida], ['El', 'sentido', 'de', 'la', 'vida', 'es', 
'Hacer billetes y ser exitoso '], []).

% "Crees en dios"
template([crees, en, dios], ['La', 'fe', 'es', 'una', 'cuestión', 'personal',  'de', 'tus', 'creencias', '.'], []).

%  "Cual es tu comida favorita"
template([cual, es, tu, comida, favorita], ['Mi', 'comida', 'favorita', 'es','los tacos' ], []).
%------------------------------------------------------------------------------


template([mi, cancion, favorita, es, s(_), mi, artista, favorito, es, s(_), y, mi, album, favorito, es, s(_), '.'], ['Que', 'excelente', 'eleccion'], [4, 10, 16]).

template([mi, freestyler, favorito, es, s(_), su, nombre, es, s(_), y, es, de, s(_), '.'], ['de hecho', 0. 'es muy buen representante de ',2,'no sabia que su nombre era',1 ], [4, 10, 16]).

template([mis, ejercicios, favoritos, de, gimnasio, son, s(_), s(_), y, s(_), '.'], [''], [8, 9, 10]).

template([mi, top, 3, consolas, favoritas, son, s(_), s(_), y, s(_), '.'], ['Qué', genial', cuéntame', más, sobre, tus, consolas, 'favoritas', '?'], [6, 7, 8]).

template([mi, top, 3, materias, difíciles, son, s(_), s(_), y, s(_), '.'], ['Ah', veo', podrías, explicar, un, poco, más, sobre, las, materias, que, encuentras, difíciles', '?'], [6, 7, 8]).

%---------------------------------------------------------------------------------------------

template([buendia, mi, nombre, es, s(_), y, soy, de, s(_) '.'], ['buen dia', 'Como', estas, tu, 0, 1, es, un, lindo, lugar], [4,8]).

template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).






template([mi, cancion, favorita, es, s(_), mi, artista, favorito, es, s(_), y, mi, album, favorito, es, s(_), '.'], ['Que', 'excelente', 'eleccion'], [4, 10, 16]).

template([mi, freestyler, favorito, es, s(_), su, nombre, es, s(_), y, es, de, s(_), '.'], ['de hecho', 0. 'es muy buen representante de ',2,'no sabia que su nombre era',1 ], [4, 10, 16]).





