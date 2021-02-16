import java.util.Scanner;

public class main {

	private static Scanner teclado = new Scanner(System.in);
		
	public static void main(String[] args) {
		String tokens[] = new String[3];
		String op;
		
		System.out.println("Coloque uma operação simples para ser realizada separadas por espaço: ");
		
		op = teclado.nextLine();
		
		tokens = op.split(" ");
				
		switch (tokens[1]) {
		case "+":
			System.out.println(Integer.parseInt(tokens[0]) + Integer.parseInt(tokens[2]));
			break;
			
		case "-":
			System.out.println(Integer.parseInt(tokens[0]) - Integer.parseInt(tokens[2]));
			break;
			
		case "*":
			System.out.println(Integer.parseInt(tokens[0]) * Integer.parseInt(tokens[2]));
			break;
			
		case "/":
			System.out.println(Integer.parseInt(tokens[0]) / Integer.parseInt(tokens[2]));
			break;

		default:
			System.out.println("Operação Invalida");
			break;
		}

	}

}
