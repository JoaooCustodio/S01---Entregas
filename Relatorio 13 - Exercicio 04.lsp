;; Tipo Elemento
(defparameter pyro 'Pyro)
(defparameter hydro 'Hydro)
(defparameter cryo 'Cryo)
(defparameter electro 'Electro)
(defparameter anemo 'Anemo)

;; Tipo Local
(defstruct local
  nome
  elemento
  dificuldade
  recompensa)

;; Calcula a recompensa com bônus elemental
(defun bonus-elemental (local)
  (cond
    ((or (eq (local-elemento local) pyro)
         (eq (local-elemento local) electro))
     (* (local-recompensa local) 1.20))

    ((eq (local-elemento local) cryo)
     (* (local-recompensa local) 1.10))

    (t
     (local-recompensa local))))

;; Verifica se vale a pena farmar
(defun vale-a-pena (local)
  (and (> (bonus-elemental local) 500)
       (<= (local-dificuldade local) 3)))

;; Gera a descrição da rota
(defun formata-local (local)
  (format nil
          "~a - Recompensa: ~,2f"
          (local-nome local)
          (bonus-elemental local)))

;; Seleciona apenas os locais recomendados
(defun rota-de-farm (catalogo)
  (mapcar
   #'formata-local
   (remove-if-not
    #'vale-a-pena
    catalogo)))

;; Main
(let ((catalogo
       (list

        (make-local
         :nome "Vale dos Ventos"
         :elemento anemo
         :dificuldade 2
         :recompensa 450)

        (make-local
         :nome "Templo do Fogo"
         :elemento pyro
         :dificuldade 3
         :recompensa 500)

        (make-local
         :nome "Caverna Congelada"
         :elemento cryo
         :dificuldade 2
         :recompensa 480)

        (make-local
         :nome "Ruínas Elétricas"
         :elemento electro
         :dificuldade 1
         :recompensa 550)

        (make-local
         :nome "Palácio Submerso"
         :elemento hydro
         :dificuldade 5
         :recompensa 700))))

  ;; Lista completa
  (format t "~%=== TODOS OS LOCAIS ===~%")

  (mapc
   (lambda (l)
     (format t "~a | Bônus: ~,2f~%"
             (local-nome l)
             (bonus-elemental l)))
   catalogo)

  ;; Rota recomendada
  (format t "~%=== ROTA DE FARM RECOMENDADA ===~%")

  (mapc
   (lambda (texto)
     (format t "~a~%" texto))
   (rota-de-farm catalogo)))