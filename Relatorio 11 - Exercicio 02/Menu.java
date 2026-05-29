import java.util.ArrayList;

public class Menu {
    private ArrayList<Cafe> cafes;

    public Menu() {
        cafes = new ArrayList<>();
    }

    public void adicionarCafe(Cafe cafe) {
        cafes.add(cafe);
    }

    public void exibirMenu() {
        for (Cafe c : cafes) {
            System.out.println("Café: " + c.getNome());
            System.out.println("Preço final: R$ " + c.calcularPrecoFinal());
            System.out.println("-------------------");
        }
    }
}
