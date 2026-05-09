// Classe base Pokemon
class Pokemon {
    constructor(nome, tipo, vida) {
        this.nome = nome;
        this.tipo = tipo;
        this._vida = vida; // atributo "privado"
    }

    // Getter para acessar a vida
    get vida() {
        return this._vida;
    }

    // Método genérico de ataque
    atacar(alvo) {
        console.log(`${this.nome} realizou um ataque básico!`);
        alvo.receber_dano(10);
    }

    // Método para receber dano (encapsulamento)
    receber_dano(dano) {
        this._vida -= dano;
        if (this._vida < 0) {
            this._vida = 0;
        }
    }
}

// Classe Pikachu herdando de Pokemon
class Pikachu extends Pokemon {
    constructor() {
        super("Pikachu", "Elétrico", 100);
    }

    // Sobrescrita do método atacar
    atacar(alvo) {
        console.log(`${this.nome} usou CHOQUE DO TROVÃO! ⚡`);
        alvo.receber_dano(25);
    }
}

// Classe Charizard herdando de Pokemon
class Charizard extends Pokemon {
    constructor() {
        super("Charizard", "Fogo", 150);
    }

    // Sobrescrita do método atacar
    atacar(alvo) {
        console.log(`${this.nome} usou LANÇA-CHAMAS! 🔥`);
        alvo.receber_dano(30);
    }
}

// --- MAIN ---

const pikachu = new Pikachu();
const charizard = new Charizard();

// Cada um ataca
pikachu.atacar(charizard);
charizard.atacar(pikachu);

// Aplicando dano adicional
charizard.receber_dano(50);

// Exibindo vida restante
console.log(`Vida do Pikachu: ${pikachu.vida}`);
console.log(`Vida do Charizard: ${charizard.vida}`);
``