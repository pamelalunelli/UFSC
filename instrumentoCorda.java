public abstract class instrumentoCorda extends Instrumento{
	
	//não precisa implementar o metodo tocar() porque a classe também é abstrata
	
	private int ncordas;
	
	instrumentoCorda(int ncordas){
		if (n >= 1) this.ncordas = n;
		else this.ncordas = 1;
	}
}
		
	