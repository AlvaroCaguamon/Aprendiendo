(defun calcular-precio (cantidad)
  (cond ((< cantidad 5) (* cantidad precio-normal))
        ((< cantidad 12) (* cantidad (- precio-normal (* precio-normal 0.15))))
        (t (* cantidad (- precio-normal (* precio-normal 0.30))))))

(defvar precio-normal 50) ; Precio normal por pantalón

(format t "Ingrese la cantidad de pantalones a comprar: ")
(let ((cantidad (read)))
  (format t "Total a pagar: ~a~%" (calcular-precio cantidad)))


(defun evaluar-prestamo (historia-credito cantidad-pedida salario-anual valor-otras-propiedades)
  (if (char= historia-credito #\b)
      (let ((puntos 0))
        (if (>= salario-anual (* 0.5 cantidad-pedida))
            (incf puntos 5)
            (if (>= salario-anual (* 0.25 cantidad-pedida))
                (incf puntos 3)
                (if (>= salario-anual (* 0.1 cantidad-pedida))
                    (incf puntos 1)))
        (if (>= valor-otras-propiedades (* 2 cantidad-pedida))
            (incf puntos 5)
            (if (>= valor-otras-propiedades cantidad-pedida)
                (incf puntos 3)))
        (if (> puntos 6)
            (format t "Préstamo aprobado.~%")
            (format t "Préstamo denegado.~%")))
      (format t "Préstamo denegado. Historial de crédito malo.~%")))

(format t "Ingrese el nombre del solicitante: ")
(setq nombre (read))
(format t "Ingrese la historia crediticia (b/m): ")
(setq historia-credito (read-char))
(format t "Ingrese la cantidad pedida: ")
(setq cantidad-pedida (read))
(format t "Ingrese el salario anual: ")
(setq salario-anual (read))
(format t "Ingrese el valor de otras propiedades: ")
(setq valor-otras-propiedades (read))

(evaluar-prestamo historia-credito cantidad-pedida salario-anual valor-otras-propiedades)




(format t "Ingrese una letra minúscula: ")
(setq letra (read-char))

(cond ((member letra '(#\a #\e #\i #\o #\u))
       (format t "Vocal.~%"))
      ((char= letra #\y)
       (format t "Semivocal.~%"))
      ((and (>= letra #\a) (<= letra #\z))
       (format t "Consonante.~%"))
      (t (format t "Caracter inválido.~%")))
