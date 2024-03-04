;;Pregunta 1


(defun pregunta1 ()
  (format t "Ingrese un número: ")
  (setq n (parse-integer (read-line)))
  (format t "La suma de los primeros ~A números es: ~A" n (suma-primeros-n n)))

(defun suma-primeros-n (n)
  (loop for i from 1 to n
        sum i))


(pregunta1)


;;Pregunta 4
(defun ejercicio2 (lista)
  (if (and (listp lista) (>= (length lista) 3))
      (caddr lista)
      (error "La lista no tiene al menos tres elementos")))
;; Según el tutorial que vi hace unos días así debería funcionar. diosito en ti confío 
(let ((ejemplo-lista '( 4 8 22 69 58)))
  (format t "El tercer elemento de la lista es: ~A" (ejercicio2 ejemplo-lista)))
