//import java.util.ArrayList;

public class TestaAquario{
    
    public static void main (String [] args){
        
		Peixe idPeixe;
		
		Peixe p1 = new Peixe ("Jaraqui", 0.74);
		Peixe p2 = new Peixe ("Piranha", 0.39);
		Peixe p3 = new Peixe ("Pirarucu", 1.85);
		Peixe p4 = new Peixe ("Tilápia", 0.39);
		Peixe p5 = new Peixe ("Pirarucu", 1.85);
		
		Aquario aqua = new Aquario();
		
		aqua.adicionaPeixe(p1);
		aqua.adicionaPeixe(p2);
		aqua.adicionaPeixe(p3);
		aqua.adicionaPeixe(p4);
		aqua.adicionaPeixe(p5);
		
		
		aqua.imprimePeixe();
		
		idPeixe = p2;
		
		System.out.println("------------------- \nO índice do peixe "+ idPeixe + "\n é o número " + aqua.buscaPeixe(idPeixe) + "\n-------------------");
		aqua.removePeixe(aqua.buscaPeixe(idPeixe));
		aqua.imprimePeixe();

		System.out.println(p3.equals(p5));
		
		aqua.compDosPeixes();
		
    }


}