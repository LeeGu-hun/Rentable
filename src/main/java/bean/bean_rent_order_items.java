package bean;

//주문상세 테이블 빈
public class bean_rent_order_items {
	private int ROI_itemid; // 상세 아이템번호
	private int ROI_ordernum; // 주문번호
	private int ROI_itemnum; // 물품번호
	private int ROI_price; // 1개 물품의 대여료
	private String ROI_startdate; // 물품 대여일
	private String ROI_enddate; // 물품 반납일
	private int ROI_buyidnum;
	private int ROI_saleidnum;
	private String ROI_stat;
	private String ROI_buyername;
	private String ROI_buyeraddress;
	private String ROI_buyerphone;
	private String ROI_comment;
	
	public bean_rent_order_items(int rOI_itemid, int rOI_ordernum, int rOI_itemnum, int rOI_price, String rOI_startdate,
			String rOI_enddate, int rOI_buyidnum, int rOI_saleidnum, String rOI_stat, String rOI_buyername,
			String rOI_buyeraddress, String rOI_buyerphone, String rOI_comment) {
		super();
		ROI_itemid = rOI_itemid;
		ROI_ordernum = rOI_ordernum;
		ROI_itemnum = rOI_itemnum;
		ROI_price = rOI_price;
		ROI_startdate = rOI_startdate;
		ROI_enddate = rOI_enddate;
		ROI_buyidnum = rOI_buyidnum;
		ROI_saleidnum = rOI_saleidnum;
		ROI_stat = rOI_stat;
		ROI_buyername = rOI_buyername;
		ROI_buyeraddress = rOI_buyeraddress;
		ROI_buyerphone = rOI_buyerphone;
		ROI_comment = rOI_comment;
	}
	
	public bean_rent_order_items() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getROI_itemid() {
		return ROI_itemid;
	}
	public void setROI_itemid(int rOI_itemid) {
		ROI_itemid = rOI_itemid;
	}
	public int getROI_ordernum() {
		return ROI_ordernum;
	}
	public void setROI_ordernum(int rOI_ordernum) {
		ROI_ordernum = rOI_ordernum;
	}
	public int getROI_itemnum() {
		return ROI_itemnum;
	}
	public void setROI_itemnum(int rOI_itemnum) {
		ROI_itemnum = rOI_itemnum;
	}
	public int getROI_price() {
		return ROI_price;
	}
	public void setROI_price(int rOI_price) {
		ROI_price = rOI_price;
	}
	public String getROI_startdate() {
		return ROI_startdate;
	}
	public void setROI_startdate(String rOI_startdate) {
		ROI_startdate = rOI_startdate;
	}
	public String getROI_enddate() {
		return ROI_enddate;
	}
	public void setROI_enddate(String rOI_enddate) {
		ROI_enddate = rOI_enddate;
	}
	public int getROI_buyidnum() {
		return ROI_buyidnum;
	}
	public void setROI_buyidnum(int rOI_buyidnum) {
		ROI_buyidnum = rOI_buyidnum;
	}
	public int getROI_saleidnum() {
		return ROI_saleidnum;
	}
	public void setROI_saleidnum(int rOI_saleidnum) {
		ROI_saleidnum = rOI_saleidnum;
	}
	public String getROI_stat() {
		return ROI_stat;
	}
	public void setROI_stat(String rOI_stat) {
		ROI_stat = rOI_stat;
	}
	public String getROI_buyername() {
		return ROI_buyername;
	}
	public void setROI_buyername(String rOI_buyername) {
		ROI_buyername = rOI_buyername;
	}
	public String getROI_buyeraddress() {
		return ROI_buyeraddress;
	}
	public void setROI_buyeraddress(String rOI_buyeraddress) {
		ROI_buyeraddress = rOI_buyeraddress;
	}
	public String getROI_buyerphone() {
		return ROI_buyerphone;
	}
	public void setROI_buyerphone(String rOI_buyerphone) {
		ROI_buyerphone = rOI_buyerphone;
	}
	public String getROI_comment() {
		return ROI_comment;
	}
	public void setROI_comment(String rOI_comment) {
		ROI_comment = rOI_comment;
	}	
}
