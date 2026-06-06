;; TipoItem
(defparameter arma 'Arma)
(defparameter pocao 'Pocao)
(defparameter artefato 'Artefato)

;; Tipo Item
(defstruct item
  nome
  tipo
  preco
  forca-magica)

;; Adiciona 15% de imposto
(defun adiciona-imposto (preco)
  (* preco 1.15))

;; Aplica bônus mágico
(defun bonus-maldicao (forca)
  (if (> forca 80)
      (* forca 1.5)
      forca))

;; Gera descrição do item
(defun descricao-venda (item)
  (format nil
          "Nome: ~a | Preço Final: R$ ~,2f | Força Mágica: ~,1f"
          (item-nome item)
          (item-preco item)
          (item-forca-magica item)))

;; Processa apenas as armas
(defun processa-venda (catalogo)

  (mapcar
   #'descricao-venda

   (mapcar
    (lambda (i)
      (make-item
       :nome (item-nome i)
       :tipo (item-tipo i)
       :preco (adiciona-imposto (item-preco i))
       :forca-magica (bonus-maldicao (item-forca-magica i))))

    (remove-if-not
     (lambda (i)
       (eq (item-tipo i) arma))
     catalogo))))

;; Main
(let ((catalogo
       (list

        (make-item
         :nome "Espada Sombria"
         :tipo arma
         :preco 100
         :forca-magica 90)

        (make-item
         :nome "Machado Maldito"
         :tipo arma
         :preco 150
         :forca-magica 70)

        (make-item
         :nome "Poção de Cura"
         :tipo pocao
         :preco 50
         :forca-magica 20)

        (make-item
         :nome "Poção de Mana"
         :tipo pocao
         :preco 60
         :forca-magica 40)

        (make-item
         :nome "Amuleto Antigo"
         :tipo artefato
         :preco 200
         :forca-magica 100))))

  (format t "~%=== ARMAS PROCESSADAS ===~%")

  (mapc
   (lambda (texto)
     (format t "~a~%" texto))
   (processa-venda catalogo)))