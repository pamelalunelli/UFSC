public class Peixe {

	private String especie;
	private double comprimento;
	
	Peixe (String especie, double comprimento){
		setComprimento(comprimento);
		setEspecie(especie);
	}
	
	public String getEspecie(){
		return this.especie;
	}
	
	public void setEspecie(String especie){
		this.especie = especie;
	}
	
	public double getComprimento(){
		return this.comprimento;
	}
	
	public void setComprimento(double comprimento){
		if (comprimento>0)
		{
			this.comprimento = comprimento;
		}
		else{
			this.comprimento = 1;
		}
	}
	
	@Override
	public String toString(){
		return "\n" + this.especie + " com " + this.comprimento + " m";
	}
	
	@Override	
	public boolean equals(Object o){
		if (this == o){
			return true;
			}
		if (!(o instanceof Peixe)){
			return false;
		}
		
		Peixe px = (Peixe) o;
		if (this.comprimento == px.comprimento && this.especie.equals(px.especie)){
			return true;
		}
		else {
			return false;
		}
	}
}