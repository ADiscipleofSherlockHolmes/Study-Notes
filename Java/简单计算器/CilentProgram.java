import java.util.Scanner;
public class CilentProgram {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in); 
		System.out.println("������һ������");
		double numberA = sc.nextDouble();
		System.out.println("������һ������");
		double numberB = sc.nextDouble();
		System.out.println("������һ�����������+��-��*��/ �ĸ��е�һ����");
		char c = sc.next().charAt(0);
		Operation oper = new OperationFactory().operationCreate(c);
		oper.setNumberA(numberA);
		oper.setNumberB(numberB);
		System.out.println("�������ǣ�"+oper.getResult());
	}
}
