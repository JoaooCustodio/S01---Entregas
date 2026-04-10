#include <iostream>
#include <string>
#include <vector>

using namespace std;

// Classe base
class MembroConselho {
protected:
    string nome;

public:
    MembroConselho(string n) {
        nome = n;
    }

    // Método virtual
    virtual void saudar() {
        cout << "Um membro do conselho faz uma reverência silenciosa."
             << endl;
    }

    // Destrutor virtual (boa prática)
    virtual ~MembroConselho() {}
};

// Classe Anao
class Anao : public MembroConselho {
public:
    Anao(string n) : MembroConselho(n) {}

    void saudar() override {
        cout << "Pela força da montanha, eu sou " << nome
             << " e honro nosso aço!" << endl;
    }
};

// Classe Orc
class Orc : public MembroConselho {
public:
    Orc(string n) : MembroConselho(n) {}

    void saudar() override {
        cout << "Pelo sangue e glória, eu sou " << nome
             << " e trago a força da minha tribo!" << endl;
    }
};

// Classe Draconato
class Draconato : public MembroConselho {
public:
    Draconato(string n) : MembroConselho(n) {}

    void saudar() override {
        cout << "Pelo sopro dos ancestrais, eu sou " << nome
             << " e falo em nome dos dragões!" << endl;
    }
};

// Função principal
int main() {
    // Lista única de membros do conselho
    vector<MembroConselho*> conselho;

    // Adicionando membros de diferentes raças
    conselho.push_back(new Anao("Borin"));
    conselho.push_back(new Orc("Grom"));
    conselho.push_back(new Draconato("Araxion"));

    // Percorrendo a lista e demonstrando o polimorfismo
    for (MembroConselho* membro : conselho) {
        membro->saudar();
    }

    // Liberando memória
    for (MembroConselho* membro : conselho) {
        delete membro;
    }

    return 0;
}