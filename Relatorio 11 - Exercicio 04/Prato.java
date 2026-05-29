public class Prato {

    private String nome;
    private Monstro monstro;
    private Tempero tempero;

    public Prato(String nome, Monstro monstro) {
        this.nome = nome;
        this.monstro = monstro;
        this.tempero = new Tempero("Sal e ervas", "2 colheres");
    }

    public void servir() {
        System.out.println("Prato: " + nome);
        monstro.virarPrato();
        System.out.println("Tempero usado: " + tempero.getNome() +
                " (" + tempero.getQuantidade() + ")");
        System.out.println("-------------------");
    }
}
