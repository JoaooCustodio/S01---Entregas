package main

import (
    "bufio"
    "fmt"
    "os"
    "strings"
    "unicode/utf8"
)

func ValidarUsuario(nome string) (bool, string) {
    if utf8.RuneCountInString(nome) >= 8 {
        return true, "Usuário criado com sucesso!"
    }
    return false, "Erro: O nome de usuário é muito curto"
}

func main() {
    leitor := bufio.NewReader(os.Stdin)

    for {
        fmt.Print("Digite um nome de usuário (mínimo 8 caracteres): ")
        entrada, _ := leitor.ReadString('\n')

        entrada = strings.TrimSpace(entrada)

        valido, msg := ValidarUsuario(entrada)
        fmt.Println(msg)

        if valido {
            break
        }
    }
}
``