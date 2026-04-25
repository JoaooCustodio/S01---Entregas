class Personagem:
    def __init__(self, vida: int, resistencia: int):
        self._vida = vida
        self._resistencia = resistencia

    # Getter
    @property
    def vida(self):
        return self._vida

    # Setter
    @vida.setter
    def vida(self, valor):
        if valor >= 0:
            self._vida = valor
        else:
            print("A vida não pode ser negativa.")

    def __str__(self):
        return f"Personagem com {self._vida} de vida e {self._resistencia} de resistência"


class Cavaleiro(Personagem):
    def __init__(self, vida: int, resistencia: int, armadura_pesada: bool):
        super().__init__(vida, resistencia)
        self.armadura_pesada = armadura_pesada

    def __str__(self):
        tipo_armadura = (
            "usa armadura pesada"
            if self.armadura_pesada
            else "não usa armadura pesada"
        )

        return (
            f"Cavaleiro com {self._vida} de vida, "
            f"{self._resistencia} de resistência e {tipo_armadura}"
        )


# Exemplo de uso
personagem = Personagem(100, 50)
cavaleiro = Cavaleiro(150, 80, True)

print(personagem)
print(cavaleiro)