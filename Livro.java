public class Livro{
    
    public String nome, descricao;
    public double valor, porcentagem;
    public Autor autor;
	boolean descontoRealizado;
    
    Livro (String nome, String descricao, double valor, Autor autor){
		setNome(nome);
		setValor(valor);
		setAutor(autor);         
    }
    
    void setNome(String nome){
        this.nome = nome;
    }
    
    void setValor(double valor){
        this.valor = valor;
    }
    
    void setAutor(Autor autor){
        this.autor = autor;
    }
    
    public String getNome(){
        return this.nome;
    }
    
    public String getDescricao(){
        return this.descricao;
    }
    
    public double getValor(){
        return this.valor;
    }
    
    public Autor getAutor(){
        return this.autor;
    }
    
    public boolean aplicaDesconto (double porcentagem){
		
		while (descontoRealizado == false && porcentagem <= 0.15){
		
			this.porcentagem = porcentagem;
		
			if (descontoRealizado == false && this.porcentagem <= 0.15){
				setValor(this.valor - (this.valor*porcentagem));
				descontoRealizado = true;
				return descontoRealizado;
			}
			else 
				return false;
		}
		return descontoRealizado;
	}
    public String toString(){
        return "O Livro se chama " + this.nome + ", do autor " + this.autor + ". \n O valor original era de " + (this.valor*100/(100-this.porcentagem*100)) + ". Está custando " + this.valor + " com o valor de " + this.porcentagem*100 + "% de desconto.\n-------------------------------------------------------";
    }
}