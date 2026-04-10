#include <iostream>
#include <string>

using namespace std;

// Definição da classe Robo
class Robo {
private:
    string modelo;
    int versao;
    float potenciaLaser;
    int integridade;

public:
    // Construtor
    Robo(string m, int v, float p, int i) {
        modelo = m;
        versao = v;
        potenciaLaser = p;
        integridade = i;
    }

    // Método disparar
    void disparar(Robo &alvo) {
        cout << "🤖 Robô " << modelo << " disparou contra o robô "
             << alvo.modelo << "!\n";

        alvo.integridade -= potenciaLaser;

        if (alvo.integridade < 0)
            alvo.integridade = 0;
    }

    // Método para exibir status
    void exibirStatus() {
        cout << "Modelo: " << modelo << endl;
        cout << "Versão: " << versao << endl;
        cout << "Potência do Laser: " << potenciaLaser << endl;
        cout << "Integridade do Chassi: " << integridade << endl;
        cout << "-----------------------------\n";
    }
};

int main() {
    // Instanciando os robôs
    Robo robo1("Alpha-X", 3, 25.5, 100);
    Robo robo2("Beta-Z", 2, 18.0, 100);

    // Status inicial
    cout << "🔹 Status Inicial\n";
    robo1.exibirStatus();
    robo2.exibirStatus();

    // Combate
    robo1.disparar(robo2);
    robo2.disparar(robo1);

    // Status final
    cout << "\n🔴 Status Final Após o Confronto\n";
    robo1.exibirStatus();
    robo2.exibirStatus();

    return 0;
}