import java.util.Scanner;
public class CilentProgram {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in); 
		System.out.println("请输入一个数字");
		double numberA = sc.nextDouble();
		System.out.println("请输入一个数字");
		double numberB = sc.nextDouble();
		System.out.println("请输入一个运算符：（+、-、*、/ 四个中的一个）");
		char c = sc.next().charAt(0);
		Operation oper = new OperationFactory().operationCreate(c);
		oper.setNumberA(numberA);
		oper.setNumberB(numberB);
		System.out.println("运算结果是："+oper.getResult());
	}
}
