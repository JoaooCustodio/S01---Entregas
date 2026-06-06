;; Definição do tipo Erva
(defstruct erva
  nome
  preco-base)

;; Calcula a dosagem de acordo com peso e idade
(defun calcula-dosagem (peso idade)
  (cond
    ((or (< idade 12) (< peso 50))
     "10ml")
    ((and (>= idade 12) (< idade 60))
     "25ml")
    (t
     "50ml")))

;; Ajusta o preço da erva
(defun ajusta-preco (erva)
  (cond
    ((string= (erva-nome erva) "Ginseng")
     (* (erva-preco-base erva) 3.0))
    ((string= (erva-nome erva) "Lotus")
     (* (erva-preco-base erva) 1.5))
    (t
     (erva-preco-base erva))))

;; Cria uma descrição completa da erva
(defun descricao-erva (erva peso idade)
  (format nil
          "Erva: ~a | Preço: R$ ~,2f | Dosagem: ~a"
          (erva-nome erva)
          (ajusta-preco erva)
          (calcula-dosagem peso idade)))

;; Programa principal
(let ((ginseng (make-erva :nome "Ginseng" :preco-base 10.0))
      (lotus (make-erva :nome "Lotus" :preco-base 8.0))
      (camomila (make-erva :nome "Camomila" :preco-base 5.0)))

  (format t "~%=== Paciente 1 ===~%")
  (format t "~a~%" (descricao-erva ginseng 40 10))
  (format t "~a~%" (descricao-erva lotus 40 10))
  (format t "~a~%" (descricao-erva camomila 40 10))

  (format t "~%=== Paciente 2 ===~%")
  (format t "~a~%" (descricao-erva ginseng 70 30))
  (format t "~a~%" (descricao-erva lotus 70 30))
  (format t "~a~%" (descricao-erva camomila 70 30))

  (format t "~%=== Paciente 3 ===~%")
  (format t "~a~%" (descricao-erva ginseng 75 65))
  (format t "~a~%" (descricao-erva lotus 75 65))
  (format t "~a~%" (descricao-erva camomila 75 65)))