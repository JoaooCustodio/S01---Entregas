#include <iostream>
#include <string>

using namespace std;

// Classe base
class MembroInatel {
protected:
    string nomeCompleto;

public:
    MembroInatel(string nome) {
        nomeCompleto = nome;
    }

    // Método virtual
    virtual void identificar() {
        cout << "Sou um membro da comunidade Inatel: "
             << nomeCompleto << "." << endl;
    }

    // Destrutor virtual (boa prática)
    virtual ~MembroInatel() {}
};

// Classe Coordenador
class Coordenador : public MembroInatel {
private:
    string departamento;

public:
    Coordenador(string nome, string dep)
        : MembroInatel(nome) {
        departamento = dep;
    }

    // Sobrescrita do método
    void identificar() override {
        cout << "Meu nome é " << nomeCompleto
             << ", sou o coordenador do departamento de "
             << departamento << " no Inatel." << endl;
    }
};

// Classe Pesquisador
class Pesquisador : public MembroInatel {
private:
    string laboratorio;

public:
    Pesquisador(string nome, string lab)
        : MembroInatel(nome) {
        laboratorio = lab;
    }

    // Sobrescrita do método
    void identificar() override {
        cout << "Meu nome é " << nomeCompleto
             << ", e realizo pesquisas no laboratório "
             << laboratorio << " do Inatel." << endl;
    }
};

// Função principal
int main() {
    // Ponteiros da classe base
    MembroInatel* membro1;
    MembroInatel* membro2;

    // Objetos das classes derivadas
    membro1 = new Coordenador("Carlos Silva", "Engenharia Elétrica");
    membro2 = new Pesquisador("Ana Souza", "Robótica");

    // Chamada polimórfica
    membro1->identificar();
    membro2->identificar();

    // Liberação de memória
    delete membro1;
    delete membro2;

    return 0;
}