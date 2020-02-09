package array2;
/*
 * 二维数组的使用
 * 
 * 1.理解：
 * 对于二维数组的理解，我们可以看成是一维数组array1又作为另一个一维数组array2的元素而存在。
 * 其实，从数组底层的运行机制来看，其实没有多维数组。
 * 
 * 2. 二维数组的使用:
 *   ① 二维数组的声明和初始化
 *   ② 如何调用数组的指定位置的元素
 *   ③ 如何获取数组的长度
 *   ④ 如何遍历数组
 *   ⑤ 数组元素的默认初始化值
 * 	   规定：二维数组分为外层数组的元素，内层数组的元素
 * 		int[][] arr = new int[4][3];
 * 		外层元素：arr[0],arr[1]等
 * 		内层元素：arr[0][0],arr[1][2]等
 *   针对于初始化方式一：比如：int[][] arr = new int[4][3];
 *      外层元素的初始化值为：地址值
 *      内层元素的初始化值为：与一维数组初始化情况相同
 *      
 *   针对于初始化方式二：比如：int[][] arr = new int[4][];
 *   	外层元素的初始化值为：null
 *      内层元素的初始化值为：不能调用，否则报错。 
 *   ⑥ 数组的内存解析 
 * 
 * 
 */
public class Array2 {
	
	public static void main(String[] args) {
		//1.1静态初始化
		int[][] arr1 = new int[][] {{1,2},{3,4,5},{6}};
		//1.2动态初始化
		int[][] arr2 = new int[3][4];
		String[][] arr3 = new String[2][2];
		int[][] arr4 = new int[3][];
		//也是正确的写法
		int[] arr5[] = new int[][] {{1,2,3},{4,5}};
		int[] arr6[] = {{1,2,3,4,5,6},{7,8}};
		
		//2.调用数组指定位置的元素
		System.out.println(arr1[0][0]);//1
		System.out.println(arr2[0][0]);//0
		System.out.println(arr3[1][1]);//null
		
		//3.获取数组的长度
		System.out.println(arr1.length);//3
		System.out.println(arr1[2].length);//1
		
		//4.遍历
		for(int i=0;i<arr1.length;i++) {
			for(int j=0;j<arr1[i].length;j++) {
				System.out.print(arr1[i][j]+" ");
			}
			System.out.println();
		}
	}
}
