

freestyler(aczino, 'Mauricio Hernández', ciudad_de_mexico, [campeon_batalla_de_los_gallos, bicampeon_fms_internacional, campeon_god_level]).
freestyler(lobo_estepario, 'Juan Carlos Ibarra', ciudad_de_mexico, [campeon_fms_mexico, campeon_god_level]).
freestyler(rctor, 'Raúl Ávila', ciudad_de_mexico, [subcampeon_fms_mexico]).
freestyler(skara, 'Luis Díaz', guadalajara, [campeon_ligas_locales]).
freestyler(lancer_lirical, 'Luis Martínez', ciudad_de_mexico, [campeon_nacional_red_bull, subcampeon_fms_mexico]).
freestyler(dominic, 'Dominic Rodríguez', ciudad_de_mexico, [campeon_nacional_bdm, top_5_fms_mexico]).
freestyler(potencia, 'José Díaz', ciudad_de_mexico, [top_5_fms_mexico]).
freestyler(rc, 'Rodrigo Campos', ciudad_de_mexico, [campeon_ligas_locales]).
freestyler(mau, 'Mauricio Ramírez', ciudad_de_mexico, [campeon_nacional_supremacia_mc]).
freestyler(zticma, 'Erick Sánchez', tijuana, [campeon_red_bull_batalla_de_los_gallos_mexico]).
freestyler(jony_beltran, 'Jonathan Beltrán', saltillo, [campeon_red_bull_batalla_de_los_gallos_mexico]).
freestyler(rapder, 'Mau Vallejo', guadalajara, [campeon_red_bull_batalla_de_los_gallos_mexico, campeon_fms_mexico]).
freestyler(bnet, 'Javier Bonet', ciudad_de_mexico, [campeon_fms_internacional]).
freestyler(garza, 'Carlos Garza', monterrey, [campeon_nacional_supremacia_mc, top_5_fms_mexico]).
freestyler(tito_mc, 'Héctor Ramírez', puebla, [campeon_ligas_locales]).


nombre_real(NombreArtistico, NombreReal) :-
    freestyler(NombreArtistico, NombreReal, _, _).


ciudad_origen(NombreArtistico, Ciudad) :-
    freestyler(NombreArtistico, _, Ciudad, _).


logros(NombreArtistico, Logros) :-
    freestyler(NombreArtistico, _, _, Logros).


freestylers_de_ciudad(Ciudad, Freestyler) :-
    freestyler(Freestyler, _, Ciudad, _).


freestylers_con_logro(Logro, Freestyler) :-
    freestyler(Freestyler, _, _, Logros),
    member(Logro, Logros).
