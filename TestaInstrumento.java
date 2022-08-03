public class TestaInstrumento{

	public static void main(String[] args){
		
		Orquestra o = new Orquestra();
		
		Instrumento[] instrumentos = new Instrumento[3];
		
		Guitarra g1 = new Guitarra();
		//ou instrumentos[0] = new Guitarra();
		Guitarra g2 = new Guitarra(8);
		//ou instrumentos[1] = new Guitarra(8);
		Baixo b1 = new Baixo();
		//ou instrumentos[2] = new Baixo();
		
		instrumentos[0] = g1;
		instrumentos[1] = g2;
		instrumentos[0] = b1;
		
		
		for (Instrumento i: instrumentos){
			o.espetaculo(i);
		}
		
		
	}
}