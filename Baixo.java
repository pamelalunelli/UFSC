public class Baixo extends InstrumentoCorda{


	Baixo(){
		super(4);
	}

	Baixo(int n){
		super (n);
	}
	
	public void tocar(){
		System.out.println("Tocando baixo");
}
}