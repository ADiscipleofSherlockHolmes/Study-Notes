package exer3;

public class Bank {
	// 存放多个客户的数组
	private Customer[] customers;
	// 记录客户的个数
	private int numberOfCustomers;

	public Bank() {
		customers = new Customer[10];
	}

	// 添加客户
	public void addCustomer(String firstName, String lastName) {
		customers[numberOfCustomers++] = new Customer(firstName, lastName);

	}

	// 获取客户个数
	public int getNumberOfCustomers() {
		return this.numberOfCustomers;
	}

	// 获取指定位置上的客户
	public Customer getCustomer(int index) {
		if (index >= 0 && index < this.numberOfCustomers) {
			return customers[index];
		}
		return null;
	}
}
