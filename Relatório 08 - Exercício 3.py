# 1. Classe para Composição
class ArmaCorpoACorpo:
    def __init__(self, tipo):
        self.tipo = tipo

# 2. Classe para Agregação
class PhantomThieves:
    def __init__(self, nome, arma):
        self.nome = nome
        self.arma = arma

# 3. Classe Principal Joker
class Joker:
    def __init__(self, membros_equipe):
        # Composição: A arma é criada internamente. 
        # Se Joker deixar de existir, a arma também deixa.
        self.arma_principal = ArmaCorpoACorpo("Faca")
        
        # Agregação: Recebe uma lista de objetos já existentes.
        # Os membros existem independentemente do Joker.
        self.equipe = membros_equipe

    # 4. Método para mostrar a equipe
    def mostrar_equipe(self):
        print(f"Joker está pronto com sua {self.arma_principal.tipo}!")
        print("Membros dos Phantom Thieves:")
        for membro in self.equipe:
            print(f"- {membro.nome} (Arma: {membro.arma})")