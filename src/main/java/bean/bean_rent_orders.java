package bean;

public class bean_rent_orders {
	private int RO_ordernum;// 주문번호
	private int RO_usernum; // 구매자 id 번호
	private int RO_total; // 총 결제 금액
	private String RO_buydate; // 총 구매 날짜;
	public bean_rent_orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	public bean_rent_orders(int rO_ordernum, int rO_usernum, int rO_total, String rO_buydate) {
		super();
		RO_ordernum = rO_ordernum;
		RO_usernum = rO_usernum;
		RO_total = rO_total;
		RO_buydate = rO_buydate;

	}
	public int getRO_ordernum() {
		return RO_ordernum;
	}
	public void setRO_ordernum(int rO_ordernum) {
		RO_ordernum = rO_ordernum;
	}
	public int getRO_usernum() {
		return RO_usernum;
	}
	public void setRO_usernum(int rO_usernum) {
		RO_usernum = rO_usernum;
	}
	public int getRO_total() {
		return RO_total;
	}
	public void setRO_total(int rO_total) {
		RO_total = rO_total;
	}
	public String getRO_buydate() {
		return RO_buydate;
	}
	public void setRO_buydate(String rO_buydate) {
		RO_buydate = rO_buydate;
	}
}
