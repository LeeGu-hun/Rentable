package bean;

import java.util.Date;

//회원 테이블
public class bean_rent_users {
	private int R_idnum; // 아이디 번호
	private String R_id; // 아이디
	private String R_password; // 비밀번호
	private String R_name; // 이름
	private String R_address; // 주소
	private String R_phone; // 전화번호
	private String R_card; // 카드명
	private int R_cash; // 잔여 금액
	private String R_stat; // 유저 현황
	private String R_regdate; // 가입일
	private String R_cardnum;// 카드번호
	private String ROI_buyidnum;
	private String renting;
	private String borrow;

	public bean_rent_users() {
	}

	public int getR_idnum() {
		return R_idnum;
	}

	public void setR_idnum(int r_idnum) {
		R_idnum = r_idnum;
	}

	public String getR_id() {
		return R_id;
	}

	public void setR_id(String r_id) {
		R_id = r_id;
	}

	public String getR_password() {
		return R_password;
	}

	public void setR_password(String r_password) {
		R_password = r_password;
	}

	public String getR_name() {
		return R_name;
	}

	public void setR_name(String r_name) {
		R_name = r_name;
	}

	public String getR_address() {
		return R_address;
	}

	public void setR_address(String r_address) {
		R_address = r_address;
	}

	public String getR_phone() {
		return R_phone;
	}

	public void setR_phone(String r_phone) {
		R_phone = r_phone;
	}

	public String getR_card() {
		return R_card;
	}

	public void setR_card(String r_card) {
		R_card = r_card;
	}

	public int getR_cash() {
		return R_cash;
	}

	public void setR_cash(int r_cash) {
		R_cash = r_cash;
	}

	public String getR_stat() {
		return R_stat;
	}

	public void setR_stat(String r_stat) {
		R_stat = r_stat;
	}

	public String getR_regdate() {
		return R_regdate;
	}

	public void setR_regdate(String r_regdate) {
		R_regdate = r_regdate;
	}

	public String getR_cardnum() {
		return R_cardnum;
	}

	public void setR_cardnum(String r_cardnum) {
		R_cardnum = r_cardnum;
	}

	public String getROI_buyidnum() {
		return ROI_buyidnum;
	}

	public void setROI_buyidnum(String rOI_buyidnum) {
		ROI_buyidnum = rOI_buyidnum;
	}

	public String getRenting() {
		return renting;
	}

	public void setRenting(String renting) {
		this.renting = renting;
	}

	public String getBorrow() {
		return borrow;
	}

	public void setBorrow(String borrow) {
		this.borrow = borrow;
	}

}
