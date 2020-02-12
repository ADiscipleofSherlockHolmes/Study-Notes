package oj;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		int n,x;
		int[] arr = new int[41];
		arr[1] = 1;
		arr[2] = 1;
		for(int i=3;i<=40;i++) {
			arr[i] = arr[i-1]+arr[i-2];
		}
		Scanner input = new Scanner(System.in);
		n = input.nextInt();
		while(n!=0) {
			n--;
			x = input.nextInt();
			System.out.println(arr[x]);
		}
	}
}
