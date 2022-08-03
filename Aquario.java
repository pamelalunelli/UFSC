import java.util.ArrayList;

public class Aquario {
	    
    private ArrayList<Peixe> listaDePeixes = new ArrayList<Peixe>();;
	

	Aquario(){
		//listaDePeixes = new ArrayList<Peixe>();
		/*Peixe p1 = new Peixe ("Baiacu", 0.52);
		Peixe p2 = new Peixe ("Tilápia", 0.39);
		listaDePeixes.add(p1);
		listaDePeixes.add(p2);*/		
	}
	
	// 1 cm = 1 g
	double compDosPeixes(){
		
		double soma = 0;
		
		for (Peixe p:listaDePeixes){
			
			soma = soma + p.getComprimento();
		}
		return soma;
		
	}
	
	
	public void adicionaPeixe(Peixe p){
		
		if (listaDePeixes.contains(p) == false){
			listaDePeixes.add(p);
		}
	}
	
	public int buscaPeixe(Peixe p){
		for (Peixe item:listaDePeixes){
			if (item.getComprimento() == p.getComprimento() && item.getEspecie() == p.getEspecie()){
			return listaDePeixes.indexOf(item);
			}
		}
		return 0;
	}
	
	public void imprimePeixe(){
		
		//System.out.println("Os peixes presentes no aquário são:" + listaDePeixes);
		
		for (Peixe p: listaDePeixes){
			System.out.println(p);
			
			System.out.println("======================");
		}
	}
	
	public void removePeixe(int indicePeixe){
		
		listaDePeixes.remove(indicePeixe);		
	}
}