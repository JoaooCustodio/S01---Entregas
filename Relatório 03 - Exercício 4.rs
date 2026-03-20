use std::io;

// Função que calcula a média final (sem NP3)
fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64 {
    // nota1 = NP1, nota2 = NP2, nota3 = NPL
    let npt = (nota1 + nota2) / 2.0;

    // Média ponderada: 70% NPT e 30% NPL
    let media_final = (0.7 * npt) + (0.3 * nota3);

    media_final
}

// Função simples para ler um f64 do usuário
fn ler_f64(mensagem: &str) -> f64 {
    println!("{}", mensagem);

    let mut entrada = String::new();
    io::stdin().read_line(&mut entrada).expect("Erro ao ler entrada");

    entrada.trim().parse::<f64>().unwrap()
}

fn main() {
    // Lê as três notas
    let np1 = ler_f64("Digite a nota NP1:");
    let np2 = ler_f64("Digite a nota NP2:");
    let npl = ler_f64("Digite a nota NPL:");

    // Calcula NPT para usar na regra de aprovação/reprovação
    let npt = (np1 + np2) / 2.0;

    // Calcula a média final chamando a função
    let media_final = calcular_media(np1, np2, npl);

    println!("----------------------------------");
    println!("NP1: {:.2}", np1);
    println!("NP2: {:.2}", np2);
    println!("NPL: {:.2}", npl);
    println!("NPT (media entre NP1 e NP2): {:.2}", npt);
    println!("Media final (70% NPT + 30% NPL): {:.2}", media_final);

    // Regra: se NPT e NPL >= 60 => aprovado, senão reprovado
    if npt >= 60.0 && npl >= 60.0 {
        println!("Parabens! Voce foi aprovado!");
    } else {
        println!("Que pena... Voce foi reprovado.");
    }

    println!("----------------------------------");
}