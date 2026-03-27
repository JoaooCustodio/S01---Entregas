package main

import "fmt"

func fibonacci(n int) {
    a, b := 0, 1

    for i := 0; i < n; i++ {
        fmt.Print(a)

        if i < n-1 {
            fmt.Print(", ")
        }

        a, b = b, a+b
    }
    fmt.Println()
}

func main() {
    var n int

    fmt.Print("Quantos números da sequência de Fibonacci você quer? ")
    fmt.Scan(&n)

    fibonacci(n)
}