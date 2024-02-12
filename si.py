def registrar(x, nombre, calificacion):
    x.append({'nombre': nombre, 'calificaciones': calificacion})
    return x

def buscar(nombre, boletas):
    calificaciones_encontradas = None
    for i in range(len(boletas)):
        if boletas[i]['nombre'] == nombre:
            calificaciones_encontradas = boletas[i]['calificaciones']

    if calificaciones_encontradas is not None:
        if isinstance(calificaciones_encontradas, int):
            calificaciones_encontradas = [calificaciones_encontradas]

        promedio = round(sum(calificaciones_encontradas) / len(calificaciones_encontradas), 2)
        return {'calificaciones': calificaciones_encontradas, 'promedio': promedio}
    else:
        return None


cont = 1
materias = 0
nombre = ""
boleta = []
calificaciones = 0
promedio = 0 
menu = 0

while menu != 3:
    menu = int(input("Elige una opcion\n1-Registrar Alumno\n2-Buscar Alumno\n3-salir\n"))
    match menu:
        case 1:
            nombre = input("Ingresa tu Nombre: \n")
            materias = int(input("¿Cuantas Materias Estas cursando: "))
            calificaciones_alumno = []  # Lista para almacenar las calificaciones del alumno
            while materias >= cont:
                calificacion = int(input("Ingresa la calificación de la materia " + str(cont) + ":"))
                calificaciones_alumno.append(calificacion)
                cont += 1

            boleta = registrar(boleta, nombre, calificaciones_alumno) 
            promedio = round(sum(calificaciones_alumno) / materias, 2)
            print("Su promedio es: " + str(promedio))

        case 2:
            buscar_alumno = input("Ingresa el nombre del alumno que deseas buscar: ")
            resultado_busqueda = buscar(buscar_alumno, boleta)

            if resultado_busqueda:
                calificaciones_encontradas = resultado_busqueda['calificaciones']
                promedio_encontrado = resultado_busqueda['promedio']

                print(f"Calificaciones de {buscar_alumno}: {calificaciones_encontradas}")
                print(f"Promedio de {buscar_alumno}: {promedio_encontrado}")
            else:
                print(f"No se encontraron calificaciones para {buscar_alumno}")

        case 3:
            print("Hasta luego")

