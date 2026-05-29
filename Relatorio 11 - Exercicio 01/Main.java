import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        Mago howl = new Mago("Howl", 25);
        howl.apresentar();

        System.out.println("---------------------");

        Divisao d1 = new Divisao("Quarto", "Descanso");
        Divisao d2 = new Divisao("Laboratório", "Experimentos");
        Divisao d3 = new Divisao("Sala de Magia", "Feitiços");

        ArrayList<Divisao> lista = new ArrayList<>();
        lista.add(d1);
        lista.add(d2);

        CasteloAnimado castelo = new CasteloAnimado(lista);
        castelo.adicionarDivisao(d3);

        castelo.listarDivisoes();
    }
}
