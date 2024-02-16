

```markdown
# Código en Lisp para Cálculo de Áreas

## Función `areaRectangulo`

```lisp
(defun areaRectangulo ()
  (princ Inserte la Medida de la base)
  (setq base (read))
  (princ Inserte la Medida de la Altura)
  (setq Altura (read))
  (setq Area ( base Altura))
  (write Area))
```

Explicación
1. `defun areaRectangulo ()` Declara una función llamada `areaRectangulo`.
2. `(princ Inserte la Medida de la base)` Imprime en la consola la solicitud para ingresar la medida de la base.
3. ...

## Función `areaCirculo`

```lisp
(defun areaCirculo ()
  (princ Inserte el radio del círculo)
  (setq radio (read))
  (setq Area ( pi ( radio radio)))
  (write Area))
```

Explicación
1. `defun areaCirculo ()` Declara una función llamada `areaCirculo`.
2. `(princ Inserte el radio del círculo)` Imprime en la consola la solicitud para ingresar el radio del círculo.
3. ...

## Función `areaTriangulo`

```lisp
(defun areaTriangulo ()
  (princ Inserte la base del triángulo)
  (setq base (read))
  (princ Inserte la altura del triángulo)
  (setq altura (read))
  (setq Area ( ( base altura) 2))
  (write Area))
```

Explicación
1. `defun areaTriangulo ()` Declara una función llamada `areaTriangulo`.
2. `(princ Inserte la base del triángulo)` Imprime en la consola la solicitud para ingresar la base del triángulo.
3. ...

## Función `areaCuadrado`

```lisp
(defun areaCuadrado ()
  (princ Inserte el lado del cuadrado)
  (setq lado (read))
  (setq Area ( lado lado))
  (write Area))
```

Explicación
1. `defun areaCuadrado ()` Declara una función llamada `areaCuadrado`.
2. `(princ Inserte el lado del cuadrado)` Imprime en la consola la solicitud para ingresar el lado del cuadrado.
3. ...

## Función `areaPentagono`

```lisp
(defun areaPentagono ()
  (princ Inserte el lado del pentágono)
  (setq lado (read))
  (princ Inserte la apotema del pentágono)
  (setq apotema (read))
  (setq Area ( ( ( 5 lado) 2) apotema))
  (write Area))
```

Explicación
1. `defun areaPentagono ()` Declara una función llamada `areaPentagono`.
2. `(princ Inserte el lado del pentágono)` Imprime en la consola la solicitud para ingresar el lado del pentágono.
3. ...

## Función `areaHexagono`

```lisp
(defun areaHexagono ()
  (princ Inserte el lado del hexágono)
  (setq lado (read))
  (setq Area ( ( 3 (sqrt 3)) ( ( lado lado) 2)))
  (write Area))
```

Explicación
1. `defun areaHexagono ()` Declara una función llamada `areaHexagono`.
2. `(princ Inserte el lado del hexágono)` Imprime en la consola la solicitud para ingresar el lado del hexágono.
3. ...


