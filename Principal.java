import java.util.Scanner;

public class Principal{
	public static void main (String [] args){
		
		Scanner entrada = new Scanner (System.in);

		System.out.println("Entre com o dia em que o churrasco será realizado (número com dois dígitos):");
		int dia = entrada.nextInt();
		
		System.out.println("Entre com o mês em que o churrasco será realizado (número com dois dígitos):");
		int mes = entrada.nextInt();
		
		System.out.println("Entre com o ano em que o churrasco será realizado (número com quatro dígitos):");
		int ano = entrada.nextInt();
		
		System.out.println("Entre com a quantidade de pessoas que comparecerão ao churrasco:");
		int n = entrada.nextInt();
		
		Churrasco c = new Churrasco(n);
		int totalCarne = c.totalCarne(n);
		
		System.out.println("No evento do dia " + dia + "/" + mes + "/" + ano + ", a quantidade total de carne para " + n + " pessoas é de " + totalCarne + " gramas de carne.");
	}
}
