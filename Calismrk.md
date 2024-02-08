# Explicación del Código

Este código define una función llamada `fibonacci` que toma un argumento `n` que representa el número de términos que deseas en la secuencia de Fibonacci. La secuencia comienza con los primeros dos términos (0 y 1) y luego se genera el resto de la secuencia mediante un bucle `while`.

### Inicialización de la secuencia
Se inicia con los dos primeros términos de la secuencia, que son 0 y 1, y se almacenan en la lista `fib_sequence`.

### Generación de la secuencia
Se utiliza un bucle `while` que se ejecuta mientras la longitud de la secuencia sea menor que `n`. En cada iteración, se calcula el siguiente término de la secuencia como la suma de los dos términos anteriores y se agrega a la lista.

### Retorno de la secuencia
La función devuelve la lista de términos de Fibonacci hasta el enésimo término especificado por el usuario.

### Ejemplo de uso
Se muestra un ejemplo de cómo utilizar la función con un valor específico de `n` y se imprime la secuencia resultante.

Este código es una implementación simple y eficiente para generar la secuencia de Fibonacci en Python. Puedes ajustar el valor de `n` según tus necesidades para obtener más o menos términos de la secuencia.
