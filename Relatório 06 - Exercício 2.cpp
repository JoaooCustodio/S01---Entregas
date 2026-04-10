#include <iostream>
#include <string>

using namespace std;

// Classe base Pessoa
class Pessoa {
private:
    string nome;
    int idade;

public:
    Pessoa(string n, int i) {
        nome = n;
        idade = i;
    }

    // Métodos de acesso (getters)
    string getNome() {
        return nome;
    }

    int getIdade() {
        return idade;
    }
};

// Classe Protagonista (herda de Pessoa)
class Protagonista : public Pessoa {
private:
    int nivel;

public:
    Protagonista(string n, int i, int nv)
        : Pessoa(n, i) {
        nivel = nv;
    }

    int getNivel() {
        return nivel;
    }
};

// Classe Personagem (herda de Pessoa)
class Personagem : public Pessoa {
private:
    int rank; // varia de 0 a 10

public:
    Personagem(string n, int i, int r)
        : Pessoa(n, i) {

        if (r < 0) rank = 0;
        else if (r > 10) rank = 10;
        else rank = r;
    }

    int getRank() {
        return rank;
    }
};

// Função principal
int main() {
    // Criando o protagonista
    Protagonista protagonista("Makoto", 17, 25);

    // Criando um personagem aliado
    Personagem aliado("Ryuji", 17, 8);

    // Exibindo valores e demonstrando acesso controlado
    cout << "🔹 Protagonista\n";
    cout << "Nome: " << protagonista.getNome() << endl;
    cout << "Idade: " << protagonista.getIdade() << endl;
    cout << "Nível: " << protagonista.getNivel() << endl;

    cout << "\n🔹 Personagem\n";
    cout << "Nome: " << aliado.getNome() << endl;
    cout << "Idade: " << aliado.getIdade() << endl;
    cout << "Rank: " << aliado.getRank() << endl;

    return 0;
}
