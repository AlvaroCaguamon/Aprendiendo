(defun areaRectangulo ()
(princ "Inserte la Medida de la base:")
(setq base (read))
(princ "Inserte la Medida de la Altura:")
(setq Altura (read))
(setq Area (* base Altura))
(write Area)

)
(defun areaCirculo ()
  (princ "Inserte el radio del círculo:")
  (setq radio (read))
  (setq Area (* pi (* radio radio)))
  (write Area)
  )

(defun areaTriangulo ()
  (princ "Inserte la base del triángulo:")
  (setq base (read))
  (princ "Inserte la altura del triángulo:")
  (setq altura (read))
  (setq Area (/ (* base altura) 2))
  (write Area)
  )

(defun areaCuadrado ()
  (princ "Inserte el lado del cuadrado:")
  (setq lado (read))
  (setq Area (* lado lado))
  (write Area)
  )

  (defun areaPentagono ()
  (princ "Inserte el lado del pentágono:")
  (setq lado (read))
  (princ "Inserte la apotema del pentágono:")
  (setq apotema (read))
  (setq Area (* (/ (* 5 lado) 2) apotema))
  (write Area))

(defun areaHexagono ()
  (princ "Inserte el lado del hexágono:")
  (setq lado (read))
  (setq Area (* (* 3 (sqrt 3)) (/ (* lado lado) 2)))
  (write Area))