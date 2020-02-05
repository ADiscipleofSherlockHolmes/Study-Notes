public class ArrayTest {
	
	public static void main(String[] args) {
		
		//1.数组的反转
		int[] arr1 = new int[] {1,2,3,4,5,6,7,8,9};
		//方式一：
//		for(int i=0;i<arr1.length/2;i++) {
//			int temp = arr1[i];
//			arr1[i] = arr1[arr1.length-1-i];
//			arr1[arr1.length-1-i] = temp;
//		}
		
		//方式二：
		for(int i=0,j=arr1.length-1;i<j;i++,j--) {
			int temp = arr1[i];
			arr1[i] = arr1[j];
			arr1[j] = temp;
		}
		
		//打印输出
		for(int i=0;i<arr1.length;i++) {
			System.out.print(arr1[i]+" ");
		}
		System.out.println();
		
		
		//2.查找
		//2.1 线性查找
		String[] arr2 = new String[] {"AA","DD","BB","GG","QQ"};
		String dest = "BB";
//		dest = "DQ";
		boolean flag = true;
		for(int i=0;i<arr2.length;i++) {
			if(dest.equals(arr2[i])) {
				System.out.println("找到了指定元素，下标为"+i);
				flag = false;
				break;
			}
		}
		if(flag) {
			System.out.println("没有找到");
		}
		//2.2 二分查找
		//前提：所要查找的数组必须有序。
		int[] arr3 = new int[]{-98,-34,2,34,54,66,79,105,210,333};
		int dest1 = 105;
		dest1 = 100;
		boolean flag1 = true;
		int left = 0;
		int right = arr3.length-1;
		while(left <= right) {
			int mid = (left+right)/2;
			if(arr3[mid]==dest1) {
				System.out.println("找到了，下标为"+mid);
				flag1 = false;
				break;
			}
			else if(arr3[mid]>dest1) {
				right = mid-1;
			}
			else {
				left = mid+1;
			}
		}
		if(flag1) {
			System.out.println("没有找到");
		}
		
		
		//3.输出杨辉三角（数组的应用）
		//3.1.声明并初始化二维数组
		int[][] yangHui = new int[10][];
		//3.2.给数组的元素赋值
		for(int i = 0;i < yangHui.length;i++){
			yangHui[i] = new int[i + 1];
			//3.2.1 给首末元素赋值
			yangHui[i][0] = yangHui[i][i] = 1;
			//3.2.2 给每行的非首末元素赋值
			//if(i > 1){
			for(int j = 1;j < yangHui[i].length - 1;j++){
				yangHui[i][j] = yangHui[i-1][j-1] + yangHui[i-1][j];
			}
			//}
		}
		//3.3.遍历二维数组
		for(int i = 0;i < yangHui.length;i++){
			for(int j = 0;j < yangHui[i].length;j++){
				System.out.print(yangHui[i][j] + "  ");
			}
			System.out.println();
		}
	}
}
