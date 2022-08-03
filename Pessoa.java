public abstract class Pessoa{

    private String nome;
	
    public Pessoa(String n){
       this.nome = n;
    }
	
    public String getNome(){
       return this.nome;
    }
	
    public abstract void meuNome();
}