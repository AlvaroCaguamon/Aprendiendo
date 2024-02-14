
def calcular(numero):
    if numero == 0 or numero == 1:
        return 1
    else:
        return numero * calcular(numero-1)

numero = int(input("Ingrese el numero a calcular: "))

print(calcular(numero))
