public class Churrasco{
	
	int qtCarne;
	
	Churrasco (int pessoas){
		totalCarne(pessoas);
	}
	
	int totalCarne (int pessoas) {
		qtCarne = pessoas * 400;
		return qtCarne;
	}	
}
	
	