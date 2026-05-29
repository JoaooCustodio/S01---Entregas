import java.util.HashMap;
import java.util.Map;

public class RegistroOculto {

    private HashMap<String, Entidade> mapa;

    public RegistroOculto() {
        mapa = new HashMap<>();
    }

    public void registrarEntidade(Entidade entidade) {
        if (mapa.containsKey(entidade.getNome())) {
            System.out.println("Entidade já registrada: " + entidade.getNome());
        } else {
            mapa.put(entidade.getNome(), entidade);
        }
    }

    public void listarEntidades() {
        for (Map.Entry<String, Entidade> entry : mapa.entrySet()) {
            Entidade e = entry.getValue();

            if (e instanceof Rastreavel) {
                Rastreavel r = (Rastreavel) e;

                System.out.println("Nome: " + e.getNome());
                System.out.println("Coordenadas: " + r.obterCoordenadas());
                System.out.println("-------------------");
            }
        }
    }
}
