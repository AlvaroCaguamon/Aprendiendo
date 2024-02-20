
```markdown
# Áreas de Figuras Geométricas

## Área de un Círculo
```clips
(defun areaCirculo ()
  (princ "Inserte el radio del círculo:")
  (setq radio (read))
  (setq Area (* pi (* radio radio)))
  (write Area)
)
```

## Área de un Triángulo
```clips
(defun areaTriangulo ()
  (princ "Inserte la base del triángulo:")
  (setq base (read))
  (princ "Inserte la altura del triángulo:")
  (setq altura (read))
  (setq Area (/ (* base altura) 2))
  (write Area)
)
```

## Área de un Cuadrado
```clips
(defun areaCuadrado ()
  (princ "Inserte el lado del cuadrado:")
  (setq lado (read))
  (setq Area (* lado lado))
  (write Area)
)
```

## Área de un Pentágono
```clips
(defun areaPentagono ()
  (princ "Inserte el lado del pentágono:")
  (setq lado (read))
  (princ "Inserte la apotema del pentágono:")
  (setq apotema (read))
  (setq Area (* (/ (* 5 lado) 2) apotema))
  (write Area)
)
```

## Área de un Hexágono
```clips
(defun areaHexagono ()
  (princ "Inserte el lado del hexágono:")
  (setq lado (read))
  (setq Area (* (* 3 (sqrt 3)) (/ (* lado lado) 2)))
  (write Area)
)
```

## Área de un Trapecio
```clips
(defun areaTrapecio ()
  (princ "Inserte la base mayor del trapecio:")
  (setq baseMayor (read))
  (princ "Inserte la base menor del trapecio:")
  (setq baseMenor (read))
  (princ "Inserte la altura del trapecio:")
  (setq alturaTrapecio (read))
  (setq Area (* (/ (+ baseMayor baseMenor) 2) alturaTrapecio))
  (write Area)
)
```

## Área de un Rombo
```clips
(defun areaRombo ()
  (princ "Inserte la diagonal mayor del rombo:")
  (setq diagonalMayor (read))
  (princ "Inserte la diagonal menor del rombo:")
  (setq diagonalMenor (read))
  (setq Area (* (/ (* diagonalMayor diagonalMenor) 2)))
  (write Area)
)
```

## Área de un Trapecio Isósceles
```clips
(defun areaTrapecioIsosceles ()
  (princ "Inserte la longitud de las bases del trapecio isósceles:")
  (setq basesTrapecioIsosceles (read))
  (princ "Inserte la altura del trapecio isósceles:")
  (setq alturaTrapecioIsosceles (read))
  (setq Area (* basesTrapecioIsosceles alturaTrapecioIsosceles))
  (write Area)
)
```

## Área de un Romboide
```clips
(defun areaRomboide ()
  (princ "Inserte la base del romboide:")
  (setq baseRomboide (read))
  (princ "Inserte la altura del romboide:")
  (setq alturaRomboide (read))
  (setq Area (* baseRomboide alturaRomboide))
  (write Area)
)
```

## Área de un Paralelogramo
```clips
(defun areaParalelogramo ()
  (princ "Inserte la base del paralelogramo:")
  (setq baseParalelogramo (read))
  (princ "Inserte la altura del paralelogramo:")
  (setq alturaParalelogramo (read))
  (setq Area (* baseParalelogramo alturaParalelogramo))
  (write Area)
)
```

# Volúmenes de Figuras Tridimensionales

## Volumen de una Esfera
```clips
(defun volumenEsfera ()
  (princ "Inserte el radio de la esfera:")
  (setq radio (read))
  (setq Volumen (/ (* 4 pi (* radio radio radio)) 3))
  (write Volumen)
)
```

## Volumen de un Cilindro
```clips
(defun volumenCilindro ()
  (princ "Inserte el radio de la base del cilindro:")
  (setq radio (read))
  (princ "Inserte la altura del cilindro:")
  (setq altura (read))
  (setq Volumen (* pi (* radio radio) altura))
  (write Volumen)
)
```

## Volumen de un Cono
```clips
(defun volumenCono ()
  (princ "Inserte el radio de la base del cono:")
  (setq radio (read))
  (princ "Inserte la altura del cono:")
  (setq altura (read))
  (setq Volumen (/ (* pi (* radio radio) altura) 3))
  (write Volumen)
)
```

## Volumen de un Cubo
```clips
(defun volumenCubo ()
  (princ "Inserte la longitud del lado del cubo:")
  (setq lado (read))
  (setq Volumen (* lado lado lado))
  (write Volumen)
)
```

## Volumen de un Prisma Rectangular
```clips
(defun volumenPrismaRectangular ()
  (princ "Inserte la longitud del lado de la base del prisma:")
  (setq ladoBase (read))
  (princ "Inserte la altura del prisma:")
  (setq alturaPrisma (read))
  (setq Volumen (* ladoBase ladoBase alturaPrisma))
  (write Volumen)
)
```

## Volumen de un Cilindro Circular
```clips
(defun volumenCilindroCircular ()
  (princ "Inserte el radio de la base del cilindro:")
  (setq radio (read))
  (princ "Inserte la altura del cilindro:")
  (setq altura (read))
  (setq Volumen (* pi (* radio radio) altura))
  (write Volumen)
)
```

## Volumen de un Tetraedro
```clips
(defun volumenTetraedro ()
  (princ "Inserte la longitud del lado del tetraedro:")
  (setq lado (read))
  (setq Volumen (/ (* lado lado lado) (sqrt 2 6)))
  (write Volumen)
)
```

## Volumen de una Pirámide Cuadrangular
```clips
(defun volumenPiramideCuadr

angular ()
  (princ "Inserte la longitud del lado de la base de la pirámide:")
  (setq ladoBase (read))
  (princ "Inserte la altura de la pirámide:")
  (setq alturaPiramide (read))
  (setq Volumen (* (/ (* ladoBase ladoBase alturaPiramide)) 3))
  (write Volumen)
)
```

## Volumen de un Prisma Triangular
```clips
(defun volumenPrismaTriangular ()
  (princ "Inserte la longitud de un lado de la base del prisma:")
  (setq ladoBase (read))
  (princ "Inserte la altura del prisma:")
  (setq alturaPrisma (read))
  (setq Volumen (* (/ (* ladoBase ladoBase alturaPrisma)) 2))
  (write Volumen)
)
```

## Volumen de un Paralelepípedo
```clips
(defun volumenParalelepipedo ()
  (princ "Inserte la longitud del lado A del paralelepípedo:")
  (setq ladoA (read))
  (princ "Inserte la longitud del lado B del paralelepípedo:")
  (setq ladoB (read))
  (princ "Inserte la longitud del lado C del paralelepípedo:")
  (setq ladoC (read))
  (setq Volumen (* ladoA ladoB ladoC))
  (write Volumen)
)
```


