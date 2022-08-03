import java.util.Scanner;
public class TestaImobiliaria{
 
    public static void main(String[] args){
       
        Imobiliaria imob = new Imobiliaria("inova imoveis");
        int op;
        Scanner entrada = new Scanner(System.in);
        do {
            System.out.println("Escolha a opção ");
            System.out.println("1 - Cadastrar Imóvel ");
            System.out.println("2 - Excluir Imóvel ");
            System.out.println("3 - Imprimir Imóveis ");
            System.out.println("4 - Sair ");
        
            op = entrada.nextInt();
            
            switch (op){
                case 1: System.out.println("Digite id");
                        int id = entrada.nextInt();
                        System.out.println("Digite preco ");
                        float preco = entrada.nextFloat();
                        System.out.println("Digite area");
                        float area = entrada.nextFloat();
                        System.out.println("Digite quantidade de quartos ");
                        int quartos = entrada.nextInt();
                        //System.out.println("Digite Tipo: Casa ou Apartamento ");
                        //String tipo = entrada.nextLine();
                        //arrumar problema de leitura de strings
                        Imovel i = new Imovel(id, preco, area, quartos, "Casa");
                        imob.adicionaImovel(i);
                        break;
                case 2: System.out.println("Digite o id do imóvel para ser removido ");
                        int ide = entrada.nextInt();
                        imob.excluiImovel(ide);
                        break;
                
                case 3: imob.imprimeImoveis();
                        break;
                case 4: System.out.println("Sair do programa");
                        break;
                
                default: System.out.println("Opção inexistente ");
            }
        }
        while (op != 4);
    }

}
