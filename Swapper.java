public class Swapper{

	int xis, ypisilon, aux;
	
    Swapper (int x, int y){
		this.setX(x);
		this.setY(y);
	}

    void setX (int xis){
	
	this.xis = xis;
	
    }

    void setY (int ypisilon){
	
	this.ypisilon = ypisilon;
		
	}

    void swap (){
	
	aux = this.xis;
	this.xis = this.ypisilon;
	this.ypisilon = aux;
	}
		
	//@Override
	public String toString (){
		return "Agora o valor de X é: " + this.xis + "e o valor de Y é: " + this.ypisilon;
	}
}