(defun calcular-precio (cantidad)
  (cond ((< cantidad 5) (* cantidad precio-normal))
        ((< cantidad 12) (* cantidad (- precio-normal (* precio-normal 0.15))))
        (t (* cantidad (- precio-normal (* precio-normal 0.30))))))

(defvar precio-normal 50) ; Precio normal por pantalón

(format t "Ingrese la cantidad de pantalones a comprar: ")
(let ((cantidad (read)))
  (format t "Total a pagar: ~a~%" (calcular-precio cantidad)))
