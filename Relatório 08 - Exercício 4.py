from abc import ABC, abstractmethod

# 1. Classe Interface base (Classe Abstrata)
class Cibernetico(ABC):
    
    # 2. Método abstrato
    @abstractmethod
    def realizar_hack(self):
        pass

# 3. Classe Implante (usada para Composição)
class Implante:
    def __init__(self, custo, funcao):
        self.custo = custo
        self.funcao = funcao

# 4. Classe NetRunner que herda de Cibernetico
class NetRunner(Cibernetico):
    def __init__(self, nome, custo_implante, funcao_implante):
        self.nome = nome
        # Composição: O NetRunner "possui" um implante criado internamente
        self.implante = Implante(custo_implante, funcao_implante)
    
    # Implementação do método abstrato
    def realizar_hack(self):
        print(f"NetRunner {self.nome} executando hack via implante de {self.implante.funcao}!")

# 5. Classe Faccao (Agregação de Ciberneticos)
class Faccao:
    def __init__(self, nome):
        self.nome = nome
        # Agregação: Uma lista que conterá objetos do tipo Cibernetico
        self.membros = []

    def adicionar_membro(self, membro: Cibernetico):
        self.membros.append(membro)

    def executar_operacao_conjunta(self):
        print(f"\n--- Operação da Facção {self.nome} iniciada ---")
        for membro in self.membros:
            membro.realizar_hack()

# 6. Main (Demonstração)
if __name__ == "__main__":
    # Criando a Facção
    voodoo_boys = Faccao("Voodoo Boys")

    # Criando instâncias de NetRunners
    n1 = NetRunner("T-Bug", 5000, "Invasão de Protocolo")
    n2 = NetRunner("Lucy", 8000, "Ciberaquecimento")
    n3 = NetRunner("Kiwi", 7500, "Curto-Circuito")

    # Agregando os NetRunners à Facção
    voodoo_boys.adicionar_membro(n1)
    voodoo_boys.adicionar_membro(n2)
    voodoo_boys.adicionar_membro(n3)

    # Demonstrando a execução em massa
    voodoo_boys.executar_operacao_conjunta() 
