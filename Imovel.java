public class Imovel{
    private int id;
    private float preco;
    private float area;
    private int quartos;
    private String tipo;//casa ou apartamento

    //tudo isso deveria ser feito por meio de set (façam depois)
    Imovel(int i, float p, float a, int q, String t){
        this.id = i; this.preco = p; this.area = a; this.quartos = q; 
        this.tipo = t;
    }
    
    int getId(){
        return this.id;
    }
    
    float getPreco(){
        return this.preco;
    }
    
    public String toString(){
        return "Id: "+ this.id + "\nPreço: "+ this.preco + "\nÁrea: "+ this.area + "\nNúmero de quartos: "+ this.quartos + "\nTipo (Casa ou Apartamento): " + this.tipo;
    }
    
    public boolean equals(Object o){
        if (this == o) return true;
        if (!(o instanceof Imovel)) return false;
        Imovel i = (Imovel) o; 
        return this.id == i.id;
    }
    
    
}
