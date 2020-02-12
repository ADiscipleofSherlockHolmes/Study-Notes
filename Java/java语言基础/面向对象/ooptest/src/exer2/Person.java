package exer2;

/*
* 1.创建程序,在其中定义两个类：Person和PersonTest类。定义如下：
* 用setAge()设置人的合法年龄(0~130)，用getAge()返回人的年龄。
*/
public class Person {
	private int age;

	public void setAge(int a) {
		if (a < 0 || a > 130) {
			System.out.println("输入的数据有误");
			return;
		}
		age = a;
	}

	public int getAge() {
		return age;
	}

}
