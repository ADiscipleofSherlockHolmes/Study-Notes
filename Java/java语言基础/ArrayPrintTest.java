public class ArrayPrintTest {
	public static void main(String[] args) {
		int[] arr = new int[]{1,2,3};
		System.out.println(arr);//地址值
		//void java.io.PrintStream.println(Object x)

		char[] arr1 = new char[]{'a','b','c'};
		System.out.println(arr1); //abc
		//void java.io.PrintStream.println(char[] x)
		
		char[] arr2 = new char[10];
		System.out.println(arr2);
		//void java.io.PrintStream.println(char[] x)
		
		char[] arr3 = new char[10];
		System.out.println("--" + arr3 + "--");
		//void java.io.PrintStream.println(String x)
	}
}
