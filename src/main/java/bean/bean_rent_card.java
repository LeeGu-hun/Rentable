package bean;


//카드 테이블 빈
public class bean_rent_card {
	private String RC_cardname;
	private int RC_cardnum;

	public bean_rent_card() {

	}

	public bean_rent_card(String rC_cardname, int rC_cardnum) {
		RC_cardname = rC_cardname;
		RC_cardnum = rC_cardnum;
	}

	public String getRC_cardname() {
		return RC_cardname;
	}

	public void setRC_cardname(String rC_cardname) {
		RC_cardname = rC_cardname;
	}

	public int getRC_cardnum() {
		return RC_cardnum;
	}

	public void setRC_cardnum(int rC_cardnum) {
		RC_cardnum = rC_cardnum;
	}

}
