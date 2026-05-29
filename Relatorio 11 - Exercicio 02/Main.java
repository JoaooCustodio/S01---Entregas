public class Main {
    public static void main(String[] args) {

        Cafe cafe1 = new Cafe("Café Simples", 5.0);
        Cafe cafe2 = new Cafe("Cappuccino", 7.5);
        CafeGourmet cafe3 = new CafeGourmet("Café Premium", 10.0, 2.5);

        CafeteriaLeblanc cafeteria = new CafeteriaLeblanc();

        cafeteria.adicionarCafe(cafe1);
        cafeteria.adicionarCafe(cafe2);
        cafeteria.adicionarCafe(cafe3);

        cafeteria.abrirCafeteria();
    }
}
