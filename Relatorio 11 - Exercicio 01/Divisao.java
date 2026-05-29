public class Divisao {
    private String nome;
    private String funcao;

    public Divisao(String nome, String funcao) {
        this.nome = nome;
        this.funcao = funcao;
    }

    public void exibirDivisao() {
        System.out.println("Divisão: " + nome + " | Função: " + funcao);
    }
}
