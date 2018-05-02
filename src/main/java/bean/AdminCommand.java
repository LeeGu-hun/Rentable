package bean;

public class AdminCommand {
	private int count_products = 0;
	private int count_borrow = 0;
	private int count_success = 0;
	private int count_delay = 0;

	public AdminCommand() {
		super();
	}

	public int getCount_products() {
		return count_products;
	}

	public void setCount_products(int count_products) {
		this.count_products = count_products;
	}

	public int getCount_borrow() {
		return count_borrow;
	}

	public void setCount_borrow(int count_borrow) {
		this.count_borrow = count_borrow;
	}

	

	public int getCount_success() {
		return count_success;
	}

	public void setCount_success(int count_success) {
		this.count_success = count_success;
	}

	public int getCount_delay() {
		return count_delay;
	}

	public void setCount_delay(int count_delay) {
		this.count_delay = count_delay;
	}

}
