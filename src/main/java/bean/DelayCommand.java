package bean;

public class DelayCommand {
	private int R_idnum;
	private String RP_itemname;
	private String ROI_startdate;
	private String ROI_enddate;
	private int RP_price;
	private int delay_date;
	private int invalid_price;

	public DelayCommand() {
		super();
	}

	public String getRP_itemname() {
		return RP_itemname;
	}

	public void setRP_itemname(String rP_itemname) {
		RP_itemname = rP_itemname;
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

	public int getRP_price() {
		return RP_price;
	}

	public void setRP_price(int rP_price) {
		RP_price = rP_price;
	}

	public int getDelay_date() {
		return delay_date;
	}

	public void setDelay_date(int delay_date) {
		this.delay_date = delay_date;
	}

	public int getInvalid_price() {
		return invalid_price;
	}

	public void setInvalid_price(int invalid_price) {
		this.invalid_price = invalid_price;
	}

	public int getR_idnum() {
		return R_idnum;
	}

	public void setR_idnum(int r_idnum) {
		R_idnum = r_idnum;
	}

}
