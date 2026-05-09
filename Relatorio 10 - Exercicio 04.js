// Classe base Hunter
class Hunter {
    constructor(nome) {
        this.nome = nome;
    }

    lutar() {
        console.log(`${this.nome} ataca de forma básica.`);
    }
}

// Classe Gon
class Gon extends Hunter {
    lutar() {
        console.log(`${this.nome} usa JAJANKEN! 💥`);
    }
}

// Classe Killua
class Killua extends Hunter {
    lutar() {
        console.log(`${this.nome} ativa GODSPEED! ⚡`);
    }
}

// Classe Kurapika
class Kurapika extends Hunter {
    lutar() {
        console.log(`${this.nome} usa suas CORRENTES! ⛓️`);
    }
}

// Classe TrupeFantasma (Agregação)
class TrupeFantasma {
    constructor(nome, membros) {
        this.nome = nome;
        this.membros = membros;
    }

    revelarMembros() {
        console.log(`\n=== MEMBROS DA ${this.nome.toUpperCase()} ===`);
        this.membros.forEach(m => {
            console.log(m);
        });
    }
}

// --- MAIN ---

// Hunters
const gon = new Gon("Gon");
const killua = new Killua("Killua");
const kurapika = new Kurapika("Kurapika");

// Cada um luta
gon.lutar();
killua.lutar();
kurapika.lutar();

// Trupe Fantasma
const trupe = new TrupeFantasma("Trupe Fantasma", [
    "Chrollo",
    "Hisoka",
    "Feitan"
]);

// Revelando membros
trupe.revelarMembros();
