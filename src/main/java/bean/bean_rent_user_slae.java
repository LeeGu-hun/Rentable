package bean;

//주문상세 테이블 빈
public class bean_rent_user_slae {
	private int ROI_ordernum; // 주문번호
	private String RP_ITEMNAME; // 물품이름
	private String ROI_enddate; // 물품 반납일
	private int ROI_price; // 1개 물품의 대여료
	private String ROI_stat;//현황
	private int ROI_itemnum; // 1개 물품의 대여료
	public bean_rent_user_slae(int rOI_ordernum, String rP_ITEMNAME, String rOI_enddate, int rOI_price, String rOI_stat,
			int rOI_itemnum) {
		super();
		ROI_ordernum = rOI_ordernum;
		RP_ITEMNAME = rP_ITEMNAME;
		ROI_enddate = rOI_enddate;
		ROI_price = rOI_price;
		ROI_stat = rOI_stat;
		ROI_itemnum = rOI_itemnum;
	}
	public bean_rent_user_slae() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getROI_ordernum() {
		return ROI_ordernum;
	}
	public void setROI_ordernum(int rOI_ordernum) {
		ROI_ordernum = rOI_ordernum;
	}
	public String getRP_ITEMNAME() {
		return RP_ITEMNAME;
	}
	public void setRP_ITEMNAME(String rP_ITEMNAME) {
		RP_ITEMNAME = rP_ITEMNAME;
	}
	public String getROI_enddate() {
		return ROI_enddate;
	}
	public void setROI_enddate(String rOI_enddate) {
		ROI_enddate = rOI_enddate;
	}
	public int getROI_price() {
		return ROI_price;
	}
	public void setROI_price(int rOI_price) {
		ROI_price = rOI_price;
	}
	public String getROI_stat() {
		return ROI_stat;
	}
	public void setROI_stat(String rOI_stat) {
		ROI_stat = rOI_stat;
	}
	public int getROI_itemnum() {
		return ROI_itemnum;
	}
	public void setROI_itemnum(int rOI_itemnum) {
		ROI_itemnum = rOI_itemnum;
	}
	
}
