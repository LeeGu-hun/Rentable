package bean;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ItemCommand {
	private int RP_itemnum; // 물품 번호
	private String RP_itemname; // 물품 명
	private int RP_price; // 물품 일일대여료
	private Date RP_regdate; // 물품 등록날짜
	private String RP_startdate; // 물품 대여가능일
	private String RP_enddate; // 물품 반납일
	private String RP_itemstat; // 물품 상태 대여중 or not 대여중
	private MultipartFile RP_img1; // 물품 이미지1 파일명
	private MultipartFile RP_img2; // 물품 이미지2 파일명
	private MultipartFile RP_img3; // 물품 이미지3 파일명
	private int RP_usernum; // 물품 주인 아이디 번호
	private String RP_detail; // 물품 상세 보기 글
	private String RP_catemain; // 물품 카테 메인
	private String RP_catesub; // 물품 카테 서브
	private String RP_guarantee; // 물품 안심등록

	public ItemCommand(int rP_itemnum, String rP_itemname, int rP_price, Date rP_regdate, String rP_startdate,
			String rP_enddate, String rP_itemstat, MultipartFile rP_img1, MultipartFile rP_img2, MultipartFile rP_img3,
			int rP_usernum, String rP_detail, String rP_catemain, String rP_catesub, String rP_guarantee) {

		RP_itemnum = rP_itemnum;
		RP_itemname = rP_itemname;
		RP_price = rP_price;
		RP_regdate = rP_regdate;
		RP_startdate = rP_startdate;
		RP_enddate = rP_enddate;
		RP_itemstat = rP_itemstat;
		RP_img1 = rP_img1;
		RP_img2 = rP_img2;
		RP_img3 = rP_img3;
		RP_usernum = rP_usernum;
		RP_detail = rP_detail;
		RP_catemain = rP_catemain;
		RP_catesub = rP_catesub;
		RP_guarantee = rP_guarantee;
	}

	public ItemCommand() {

	}
	

	public int getRP_itemnum() {
		return RP_itemnum;
	}

	public void setRP_itemnum(int rP_itemnum) {
		RP_itemnum = rP_itemnum;
	}

	public String getRP_itemname() {
		return RP_itemname;
	}

	public void setRP_itemname(String rP_itemname) {
		RP_itemname = rP_itemname;
	}

	public int getRP_price() {
		return RP_price;
	}

	public void setRP_price(int rP_price) {
		RP_price = rP_price;
	}

	public Date getRP_regdate() {
		return RP_regdate;
	}

	public void setRP_regdate(Date rP_regdate) {
		RP_regdate = rP_regdate;
	}

	public String getRP_startdate() {
		return RP_startdate;
	}

	public void setRP_startdate(String rP_startdate) {
		RP_startdate = rP_startdate;
	}

	public String getRP_enddate() {
		return RP_enddate;
	}

	public void setRP_enddate(String rP_enddate) {
		RP_enddate = rP_enddate;
	}

	public String getRP_itemstat() {
		return RP_itemstat;
	}

	public void setRP_itemstat(String rP_itemstat) {
		RP_itemstat = rP_itemstat;
	}

	public MultipartFile getRP_img1() {
		return RP_img1;
	}

	public void setRP_img1(MultipartFile rP_img1) {
		RP_img1 = rP_img1;
	}

	public MultipartFile getRP_img2() {
		return RP_img2;
	}

	public void setRP_img2(MultipartFile rP_img2) {
		RP_img2 = rP_img2;
	}

	public MultipartFile getRP_img3() {
		return RP_img3;
	}

	public void setRP_img3(MultipartFile rP_img3) {
		RP_img3 = rP_img3;
	}

	public int getRP_usernum() {
		return RP_usernum;
	}

	public void setRP_usernum(int rP_usernum) {
		RP_usernum = rP_usernum;
	}

	public String getRP_detail() {
		return RP_detail;
	}

	public void setRP_detail(String rP_detail) {
		RP_detail = rP_detail;
	}

	public String getRP_catemain() {
		return RP_catemain;
	}

	public void setRP_catemain(String rP_catemain) {
		RP_catemain = rP_catemain;
	}

	public String getRP_catesub() {
		return RP_catesub;
	}

	public void setRP_catesub(String rP_catesub) {
		RP_catesub = rP_catesub;
	}

	public String getRP_guarantee() {
		return RP_guarantee;
	}

	public void setRP_guarantee(String rP_guarantee) {
		RP_guarantee = rP_guarantee;
	}

}