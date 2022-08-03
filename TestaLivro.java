public class TestaLivro
{
    public static void main(String[] args) {
        		
		Autor a1 = new Autor ("Gabriel", "García Márquez");
		Autor a2 = new Autor ("Eduardo", "Galeano");

		Livro l1 = new Livro ("Cem Anos de Solidão", "Conta a história de uma família (os Buendía) e de uma cidade (Macondo) que estão isolados do resto do mundo, encerrados pela solidão.", 100, a1);
		EBook e1 = new EBook ("As Veias Abertas da América Latina", "É um grande amontoado de uma densa análise da história da América Latina sob a lente da dominação econômica europeia e norte-americana.", 50, a2);
		
		l1.aplicaDesconto(0.05);//Testando valores fora da regra de desconto
		l1.aplicaDesconto(0.10);
		System.out.println(l1);
		
		
		e1.aplicaDesconto(0.50);// Testando valores fora da regra de desconto
		e1.aplicaDesconto(0.15);
		System.out.println(e1);
    
		
	
	}
}
