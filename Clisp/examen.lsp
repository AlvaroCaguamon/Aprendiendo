(defun pregunta1 ()
  (format t "Ingrese un número: ")
  (setq n (parse-integer (read-line)))
  (format t "La suma de los primeros ~A números es: ~A" n (suma-primeros-n n)))

(defun suma-primeros-n (n)
  (loop for i from 1 to n
        sum i))


(pregunta1)
