use std::io;

fn verificar_senha(senha: &str) -> bool {
    if senha.len() < 10 {
        return false;
    }

    let mut quantidade_numeros = 0;
    let mut tem_maiuscula = false;

    for c in senha.chars() {
        if c.is_digit(10) {
            quantidade_numeros += 1;
        }
        if c.is_ascii_uppercase() {
            tem_maiuscula = true;
        }
    }

    quantidade_numeros >= 2 && tem_maiuscula
}

fn main() {
    loop {
        println!("Digite uma senha:");

        let mut senha = String::new();
        io::stdin()
            .read_line(&mut senha)
            .expect("Erro ao ler a senha");

        let senha = senha.trim();

        if verificar_senha(senha) {
            println!("A senha é válida, seja bem vindo!");
            break;
        } else {
            println!("Senha inválida!");
            println!("- Pelo menos 10 caracteres");
            println!("- Pelo menos 2 números");
            println!("- Pelo menos 1 letra maiúscula\n");
        }
    }
}