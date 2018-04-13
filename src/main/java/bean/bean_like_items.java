package bean;

public class bean_like_items {
	private int RL_itemnum;
	private String RL_itemname;
	private int RL_price;
	private int RL_usernum;
	
	public int getRL_itemnum() {
		return RL_itemnum;
	}
	public void setRL_itemnum(int rL_itemnum) {
		RL_itemnum = rL_itemnum;
	}
	public String getRL_itemname() {
		return RL_itemname;
	}
	public void setRL_itemname(String rL_itemname) {
		RL_itemname = rL_itemname;
	}
	public int getRL_price() {
		return RL_price;
	}
	public void setRL_price(int rL_price) {
		RL_price = rL_price;
	}
	public int getRL_usernum() {
		return RL_usernum;
	}
	public void setRL_usernum(int rL_usernum) {
		RL_usernum = rL_usernum;
	}
	public bean_like_items() {
		
	}
	public bean_like_items(int rL_itemnum, String rL_itemname, int rL_price, int rL_usernum) {
		super();
		RL_itemnum = rL_itemnum;
		RL_itemname = rL_itemname;
		RL_price = rL_price;
		RL_usernum = rL_usernum;
	}

}
