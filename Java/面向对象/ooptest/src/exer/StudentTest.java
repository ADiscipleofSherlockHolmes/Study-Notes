package exer;


public class StudentTest {
	
	public static void main(String[] args) {
		
		Student[] stus = new Student[20];
		
		for(int i=0;i<stus.length;i++) {
			stus[i] = new Student();
			stus[i].number = i+1;
			stus[i].score = (int)(Math.random()*101);
			stus[i].state = (int)(Math.random()*6+1);
		}
		
		StudentTest test = new StudentTest();
		//遍历学生数组
		test.print(stus);
		System.out.println("*********************");
		//问题一：打印出3年级(state值为3）的学生信息。
		test.searchState(stus, 3);
		//问题二：使用冒泡排序按学生成绩排序，并遍历所有学生信息
		System.out.println("*********************");
		test.sort(stus);
		test.print(stus);
		
		
		
	}
	//遍历数组操作
	public void print(Student[] stus) {
		for(int i=0;i<stus.length;i++) {
			System.out.println(stus[i].info());
		}
	}
	
	//查找相应的年级
	public void searchState(Student[] stus,int state) {
		for(int i=0;i<stus.length;i++) {
			if(stus[i].state == 3) {
				System.out.println(stus[i].info());
			}
		}
	}
	
	//按照成绩排序
	public void sort(Student[] stus) {
		for(int i=0;i<stus.length-1;i++) {
			for(int j=0;j<stus.length-i-1;j++) {
				//如果需要换序，交换的是数组的元素：Student对象！！！
				if(stus[j].score > stus[j+1].score ) {
					Student temp = stus[j];
					stus[j] = stus[j+1];
					stus[j+1] = temp;
				}
			}
		}
	}
}


class Student{
	
	int number;
	int state;
	int score;

	public String info() {
		return "学号："+number + ",年级：" + state + ",分数："+score;
	}
}