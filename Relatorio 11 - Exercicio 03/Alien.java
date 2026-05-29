public class Alien extends Entidade implements Rastreavel {

    private Poder poder;

    public Alien(String nome) {
        super(nome);
        this.poder = new Poder("Raio Laser", 80);
    }

    @Override
    public String obterCoordenadas() {
        return "Planeta X: (120, 450)";
    }
}
