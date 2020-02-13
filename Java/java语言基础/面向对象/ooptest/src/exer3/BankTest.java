package exer3;

public class BankTest {

	public static void main(String[] args) {

		Bank bank = new Bank();

		bank.addCustomer("Jane", "Smith");

		// 给用户开一个账户存钱
		bank.getCustomer(0).setAccount(new Account(2000));

		// 用户取钱
		bank.getCustomer(0).getAccount().withdraw(200);

		System.out.println(
				"用户" + bank.getCustomer(0).getFirstName() + "的余额为：" + bank.getCustomer(0).getAccount().getBalance());

		System.out.println("**********************");

		bank.addCustomer("YZ", "W");

		System.out.println("目前的用户个数为：" + bank.getNumberOfCustomers());
	}
}
