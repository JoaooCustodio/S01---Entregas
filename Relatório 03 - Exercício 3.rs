use std::io;

// Função que imprime os múltiplos de "numero" entre dois limites (inclusive)
fn imprimir_multiplos(numero: i32, limite_inferior: i32, limite_superior: i32) {
    // Percorre do limite inferior ao superior, incluindo o superior
    for i in limite_inferior..=limite_superior {
        // Verifica se i é divisível por numero
        if i % numero == 0 {
            println!("{}", i);
        }
    }
}

fn ler_i32(mensagem: &str) -> i32 {
    println!("{}", mensagem);

    let mut entrada = String::new();
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");

    entrada.trim().parse::<i32>().unwrap()
}

fn main() {
    let numero = ler_i32("Digite o numero da tabuada (divisor):");
    let limite_inferior = ler_i32("Digite o limite inferior:");
    let limite_superior = ler_i32("Digite o limite superior:");

    println!("----------------------------------");
    println!(
        "Multiplos de {} entre {} e {}:",
        numero, limite_inferior, limite_superior
    );

    imprimir_multiplos(numero, limite_inferior, limite_superior);

    println!("----------------------------------");
}