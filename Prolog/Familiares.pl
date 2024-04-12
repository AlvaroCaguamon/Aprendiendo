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

abuelo(X, Y):-padre(X, Z), padre(Z,Y).
% Regla para determinar los hermanos
hermano(X, Y):- padre(Z, X), padre(Z, Y), X \= Y.

% Regla para determinar los tíos
tio(X, Y):- padre(Z, Y), hermano(X, Z).

% Regla para determinar los nietos
nieto(X, Y):- abuelo(Y, X).

