// Classe Criatura (Composição)
class Criatura {
    constructor(nome, perigo) {
        this.nome = nome;
        this.perigo = perigo;
    }
}

// Classe Diario (possui Criaturas)
class Diario {
    constructor() {
        this._criaturas = []; // array interno
    }

    registrarCriatura(criatura) {
        this._criaturas.push(criatura);
    }

    listarCriaturas() {
        console.log("=== CRIATURAS REGISTRADAS ===");
        this._criaturas.forEach(c => {
            console.log(`${c.nome} - Nível de perigo: ${c.perigo}`);
        });
    }
}

// Classe Personagem
class Personagem {
    constructor(nome) {
        this.nome = nome;
    }
}

// Classe CabanaMisterio (Agregação)
class CabanaMisterio {
    constructor(personagens) {
        this.personagens = personagens;
    }

    listarFuncionarios() {
        console.log("\n=== FUNCIONÁRIOS DA CABANA DO MISTÉRIO ===");
        this.personagens.forEach(p => {
            console.log(p.nome);
        });
    }
}

// --- MAIN ---

// Criando o diário
const diario = new Diario();

// Criando criaturas
const gnome = new Criatura("Gnome da Floresta", "Médio");
const monstroLago = new Criatura("Monstro do Lago", "Alto");
const esqueleto = new Criatura("Esqueleto Errante", "Baixo");

// Registrando criaturas
diario.registrarCriatura(gnome);
diario.registrarCriatura(monstroLago);
diario.registrarCriatura(esqueleto);

// Listando criaturas
diario.listarCriaturas();

// Criando personagens
const stan = new Personagem("Grunkle Stan");
const mabel = new Personagem("Mabel");
const soos = new Personagem("Soos");

// Criando Cabana do Mistério (agregação)
const cabana = new CabanaMisterio([stan, mabel, soos]);

// Listando funcionários
cabana.listarFuncionarios();