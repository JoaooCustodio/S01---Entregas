public class Mago extends Personagem {

    public Mago(String nome, int idade) {
        super(nome, idade);
    }

    @Override
    public void apresentar() {
        System.out.println("Meu nome é " + getNome());
        System.out.println("Sou um mago e posso lançar magias incríveis!");
    }
}
