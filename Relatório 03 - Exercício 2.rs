use std::io;

// Função que retorna true se o número for ímpar
fn eh_impar(numero: i32) -> bool {
    numero % 2 != 0
}

fn main() {
    // Jogador 1 escolhe "par" ou "impar"
    println!("Jogador 1, escolha 'par' ou 'impar':");
    let mut escolha = String::new();
    std::io::stdin().read_line(&mut escolha).expect("Erro");
    let escolha = escolha.trim().to_lowercase();

    // Jogador 1 digita o número
    println!("Jogador 1, digite um número:");
    let mut num1 = String::new();
    std::io::stdin().read_line(&mut num1).expect("Erro");
    let num1: i32 = num1.trim().parse().unwrap();

    // Jogador 2 digita o número
    println!("Jogador 2, digite um número:");
    let mut num2 = String::new();
    std::io::stdin().read_line(&mut num2).expect("Erro");
    let num2: i32 = num2.trim().parse().unwrap();

    // Soma dos números
    let soma = num1 + num2;

    // Verifica se a soma é ímpar ou par
    let soma_impar = eh_impar(soma);

    // Determina o vencedor
    let jogador1_ganhou = 
        (escolha == "impar" && soma_impar) ||
        (escolha == "par" && !soma_impar);

    // Resultado
    println!("---------------------------------------");
    println!("Número do Jogador 1: {}", num1);
    println!("Número do Jogador 2: {}", num2);
    println!("Soma: {}", soma);

    if soma_impar {
        println!("A soma é ÍMPAR!");
    } else {
        println!("A soma é PAR!");
    }

    if jogador1_ganhou {
        println!("🎉 Jogador 1 venceu!");
    } else {
        println!("🎉 Jogador 2 venceu!");
    }
    println!("---------------------------------------");
}