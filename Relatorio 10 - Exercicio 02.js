// "Interface" Habilidade (simulação)
class Habilidade {
    usar() {
        throw new Error("Método 'usar()' deve ser sobrescrito!");
    }
}

// Habilidades específicas
class Smoke extends Habilidade {
    usar() {
        console.log("Lançando SMOKE! ☁️");
    }
}

class Flash extends Habilidade {
    usar() {
        console.log("Lançando FLASH! 💥");
    }
}

class Dash extends Habilidade {
    usar() {
        console.log("Executando DASH! 💨");
    }
}

class Armadilha extends Habilidade {
    usar() {
        console.log("Armando ARMADILHA! 🕸️");
    }
}

// Classe Agente (Composição)
class Agente {
    constructor(nome, funcao, habilidade) {
        this.nome = nome;
        this.funcao = funcao;
        this._habilidade = habilidade; // encapsulado
    }

    entrarEmCombate() {
        console.log(`${this.nome} (${this.funcao}) entrou em combate!`);
        this._habilidade.usar();
    }

    // Getter opcional se quiser acessar fora
    get habilidade() {
        return this._habilidade;
    }
}

// Classe Time (Agregação)
class Time {
    constructor(agentes) {
        this.agentes = agentes;
    }

    iniciarPartida() {
        console.log("=== INICIANDO PARTIDA ===");
        this.agentes.forEach(agente => {
            agente.entrarEmCombate();
        });
    }

    listarControladores() {
        return this.agentes.filter(
            agente => agente.habilidade instanceof Smoke
        );
    }
}

// --- MAIN ---

const omen = new Agente("Omen", "Controlador", new Smoke());
const skye = new Agente("Skye", "Iniciador", new Flash());
const jett = new Agente("Jett", "Duelista", new Dash());
const cypher = new Agente("Cypher", "Sentinela", new Armadilha());

const time = new Time([omen, skye, jett, cypher]);

// Inicia a partida
time.iniciarPartida();

// Lista apenas controladores (Smoke)
console.log("\n=== CONTROLADORES ENCONTRADOS ===");
const controladores = time.listarControladores();

controladores.forEach(agente => {
    console.log(`${agente.nome} (${agente.funcao})`);
});