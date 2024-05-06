

```markdown
# Relaciones Familiares

```
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
```

## Reglas de Consulta

### Abuelo

```
abuelo(X, Y) :- padre(X, Z), padre(Z, Y).
```

### Hermano

```
hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y.
```

### Tío

```
tio(X, Y) :- padre(Z, Y), hermano(X, Z).
```

### Nieto

```
nieto(X, Y) :- abuelo(Y, X).
```
