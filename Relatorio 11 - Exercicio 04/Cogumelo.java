public class Cogumelo extends Monstro {

    public Cogumelo(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println("Senshi prepara um ensopado de cogumelos.");
    }
}
