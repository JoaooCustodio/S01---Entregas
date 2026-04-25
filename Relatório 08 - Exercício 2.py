from abc import ABC, abstractmethod


class Heroi(ABC):
    def __init__(self, nome, funcao):
        self.nome = nome
        self.funcao = funcao

    @abstractmethod
    def usar_ultimate(self):
        pass


class Tanque(Heroi):
    def __init__(self, nome):
        super().__init__(nome, "Tanque")

    def usar_ultimate(self):
        print(f"{self.nome} ativou uma barreira gigante para proteger o time!")


class Dano(Heroi):
    def __init__(self, nome):
        super().__init__(nome, "Dano")

    def usar_ultimate(self):
        print(f"{self.nome} lançou um ataque devastador nos inimigos!")


# Main
herois = [
    Tanque("Reinhardt"),
    Dano("Tracer")
]

for heroi in herois:
    heroi.usar_ultimate()