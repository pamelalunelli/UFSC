public class Guitarra extends InstrumentoCorda{


	Guitarra(){
		super(6);
	}

	Guitarra(int n){
		super (n);
	}
	
	public void tocar(){
		System.out.println("Tocando guitarra");
}
}