%% Declaraciones del Sistema Solar
estrella(sol).
planeta(mercurio).
planeta(venus).
planeta(tierra).
planeta(marte).
planeta(jupiter).
planeta(saturno).
planeta(urano).
planeta(neptuno).
planeta(pluton).
satelite(luna).
satelite(ganimedes).
satelite(calixto).
satelite(europa).
satelite(lo).
satelite(titan).

%% Reglas de consulta
orbita(X, Y) :- satelite(X), planeta(Y).
orbita(X, Y) :- satelite(X), estrella(Y).

vecino(X, Y) :- orbita(X, Z), orbita(Y, Z), X \= Y.

%% Regla para buscar objetos en el Sistema Solar
buscar_objeto(X) :- estrella(X).
buscar_objeto(X) :- planeta(X).
buscar_objeto(X) :- satelite(X).
