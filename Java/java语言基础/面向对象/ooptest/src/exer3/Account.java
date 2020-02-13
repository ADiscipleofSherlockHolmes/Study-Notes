package exer3;

public class Account {

	private double balance;

	public Account(double init_balance) {
		this.balance = init_balance;
	}

	public double getBalance() {
		return this.balance;
	}

	// 存钱操作
	public void deposit(double money) {
		if (money >= 0) {
			this.balance += money;
			System.out.println("存钱成功");
		}
	}

	// 取钱操作
	public void withdraw(double money) {
		if (this.balance - money >= 0) {
			this.balance -= money;
			System.out.println("取钱成功");
		} else {
			System.out.println("余额不足");
		}
	}
}
