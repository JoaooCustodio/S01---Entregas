;; Tipo Periculosidade
(defparameter baixa 'Baixa)
(defparameter media 'Media)
(defparameter alta 'Alta)

;; Tipo Criatura
(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)

;; Filtra criaturas que NÃO são de periculosidade baixa
(defun filtra-perigo (catalogo)
  (remove-if
   (lambda (c)
     (eq (criatura-periculosidade c) baixa))
   catalogo))

;; Gera relatório apenas das criaturas do ambiente Deep
(defun relatorio-profundidade (catalogo)
  (mapcar
   (lambda (c)
     (format nil "~a: Vive em ~a"
             (criatura-nome c)
             (criatura-ambiente c)))
   (remove-if-not
    (lambda (c)
      (string= (criatura-ambiente c) "Deep"))
    catalogo)))

;; Descrição de uma criatura
(defun descricao-criatura (c)
  (format nil
          "Nome: ~a | Ambiente: ~a | Periculosidade: ~a"
          (criatura-nome c)
          (criatura-ambiente c)
          (criatura-periculosidade c)))

;; Main
(let ((catalogo
       (list
        (make-criatura
         :nome "Peeper"
         :ambiente "Safe Shallows"
         :periculosidade baixa
         :vida-media 5)

        (make-criatura
         :nome "Reaper Leviathan"
         :ambiente "Crash Zone"
         :periculosidade alta
         :vida-media 100)

        (make-criatura
         :nome "Ghost Leviathan"
         :ambiente "Deep"
         :periculosidade alta
         :vida-media 120)

        (make-criatura
         :nome "Crab Squid"
         :ambiente "Deep"
         :periculosidade media
         :vida-media 40))))

  ;; Catálogo completo
  (format t "~%=== CATALOGO COMPLETO ===~%")
  (mapc (lambda (c)
          (format t "~a~%" (descricao-criatura c)))
        catalogo)

  ;; Criaturas perigosas
  (format t "~%=== CRIATURAS PERIGOSAS ===~%")
  (mapc (lambda (c)
          (format t "~a~%" (descricao-criatura c)))
        (filtra-perigo catalogo))

  ;; Relatório de profundidade
  (format t "~%=== RELATORIO DE PROFUNDIDADE ===~%")
  (mapc (lambda (texto)
          (format t "~a~%" texto))
        (relatorio-profundidade catalogo)))