package bean;

import java.util.Date;

//회원 테이블
public class bean_rent_users_info {

	private String R_id; // 아이디
	private String R_name; // 이름
	private String R_address; // 주소
	private String R_phone; // 전화번호
	
	public bean_rent_users_info() {
		super();
		// TODO Auto-generated constructor stub
	}
	public bean_rent_users_info(String r_id, String r_name, String r_address, String r_phone) {
		super();
		R_id = r_id;
		R_name = r_name;
		R_address = r_address;
		R_phone = r_phone;
	}
	public String getR_id() {
		return R_id;
	}
	public void setR_id(String r_id) {
		R_id = r_id;
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
	

}
