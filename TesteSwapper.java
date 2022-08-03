import java.util.Scanner;

public class TesteSwapper {

public static void main (String [] args){
	
   Scanner scan = new Scanner(System.in);

   System.out.println("Insira o valor de X:");
   int X = scan.nextInt();
      
   System.out.println("Insira o valor de Y:");
   int Y = scan.nextInt();
   
   Swapper sw = new Swapper (X, Y);
   
   sw.swap(); 
   System.out.println(sw);

   }
}

