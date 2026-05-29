public class Youkai extends Entidade implements Rastreavel {

    private Poder poder;

    public Youkai(String nome) {
        super(nome);
        this.poder = new Poder("Magia Sombria", 70);
    }

    @Override
    public String obterCoordenadas() {
        return "Floresta Sombria: (300, 900)";
    }
}
