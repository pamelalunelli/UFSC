public class Homem extends Pessoa{

	public Homem(String n){
       super(n);
}

		@Override
		public void meuNome(){
		System.out.println("Meu nome e " + this.nome);
		}
}