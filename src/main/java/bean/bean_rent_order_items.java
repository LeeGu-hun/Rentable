package bean;

import java.util.Date;


//주문상세 테이블 빈
public class bean_rent_order_items {
	private int ROI_itemid; // 상세 아이템번호
	private int ROI_ordernum; // 주문번호
	private int ROI_itemnum; // 물품번호
	private int ROI_price; // 1개 물품의 대여료
	private Date ROI_startdate; // 물품 대여일
	private Date ROI_enddate; // 물품 반납일

	public bean_rent_order_items(int rOI_itemid, int rOI_ordernum, int rOI_itemnum, int rOI_price, Date rOI_startdate,
			Date rOI_enddate) {
		ROI_itemid = rOI_itemid;
		ROI_ordernum = rOI_ordernum;
		ROI_itemnum = rOI_itemnum;
		ROI_price = rOI_price;
		ROI_startdate = rOI_startdate;
		ROI_enddate = rOI_enddate;
	}

	public bean_rent_order_items() {
		super();
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

	public Date getROI_startdate() {
		return ROI_startdate;
	}

	public void setROI_startdate(Date rOI_startdate) {
		ROI_startdate = rOI_startdate;
	}

	public Date getROI_enddate() {
		return ROI_enddate;
	}

	public void setROI_enddate(Date rOI_enddate) {
		ROI_enddate = rOI_enddate;
	}

}
