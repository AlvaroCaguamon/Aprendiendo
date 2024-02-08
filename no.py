def fibonacci(n):
    fib_sequence = [0, 1]
    while len(fib_sequence) < n:
        fib_sequence.append(fib_sequence[-1] + fib_sequence[-2])
    return fib_sequence[:n]

# Ejemplo de uso
n = 10  # Puedes cambiar este valor para obtener más o menos términos de la secuencia
result = fibonacci(n)
print(f"Secuencia de Fibonacci con los primeros {n} términos: {result}")
