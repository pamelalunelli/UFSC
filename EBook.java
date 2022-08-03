public class EBook extends Livro {
    
	double percentual;
		
	EBook(String nome, String descricao, double valor, Autor autor){
		super(nome, descricao, valor, autor);
	}
	
	
    public boolean aplicaDesconto (double percentual){
		
		while (descontoRealizado == false){
			
			this.percentual = percentual;
			
			if (descontoRealizado == false && this.percentual <= 0.30){
			
				super.aplicaDesconto(percentual);
				return descontoRealizado;
			}
			else 	
				return true;				
		}
		return descontoRealizado;
	}
    
    public String toString(){
    return "O E-Book se chama " + getNome() + ", do autor " + getAutor() + ". \n O valor original era de " + (getValor()*100/(100-percentual*100)) + ". Está custando " + getValor() + " com o valor de " + percentual*100 + "% de desconto.\n-------------------------------------------------------";
    }
    
}