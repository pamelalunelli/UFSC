public class Autor{
    
    public String nome;
	public String sobrenome;
    
    Autor (String nome, String sobrenome){
        setNome(nome);
        setSobrenome(sobrenome);
    }
    
    void setNome(String nome){
        this.nome = nome;
    }
    
    void setSobrenome(String sobrenome){
        this.sobrenome = sobrenome;
    }
    
    String getNome(){
        return this.nome;
    }
    
    String getSobrenome(){
        return this.sobrenome;
    }
    
    public String toString(){
        return  this.nome + " " + this.sobrenome; 
    }
    
    
}