(defun recorre (lista)
    (format t "~A -> " (car lista))
    (if lista 
        (recorre (cdr lista))
    )
 )

;; (defun recorre2(lista)
;; (print (car lista))
;; (if (listp))

;; )