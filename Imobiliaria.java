import java.util.ArrayList;

public class Imobiliaria{
    private ArrayList<Imovel> imoveis;//imoveis é o nome da lista
    private String nome;

    Imobiliaria(String nome){
        this.nome = nome;
        this.imoveis = new ArrayList<>();
    }
    
    void excluiImovel(int id){
        int pos = this.buscaImovel(id);
        if (pos != -1) 
            this.imoveis.remove(pos);

    }
    
    int buscaImovel(Imovel imo){
        for (int i = 0; i < this.imoveis.size(); i++){
            Imovel aux = this.imoveis.get(i);
            if (aux.equals(imo))
                return i;
        }
        return -1;
    }
    
    int buscaImovel(int id){
        for (int i = 0; i< this.imoveis.size(); i++){
            Imovel aux = this.imoveis.get(i);
            if (aux.getId() == id) 
                return i;
        }
        return -1;
    }
    
    void adicionaImovel(Imovel i){
    //somente adiciona quando o imovel não existe dentro da lista
        if (this.buscaImovel(i) == -1)
            this.imoveis.add(i);
    }
    
    float calculaPrecoMedio(){
        if (this.imoveis.isEmpty()){
            return 0;
        }
        float soma  = 0;
        for (Imovel i: this.imoveis)
            soma+= i.getPreco();
        return soma/this.imoveis.size();
    }
    
    void imprimeImoveis(){
        System.out.println();
        if (this.imoveis.isEmpty()) System.out.println(this.nome + " ainda não possui imóveis cadastrados ");
        else
            for (Imovel i: this.imoveis)
                System.out.println(i);
    
    
    }
    

}
