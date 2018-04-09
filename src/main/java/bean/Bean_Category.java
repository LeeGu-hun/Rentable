package bean;

public class Bean_Category {
	private int maincate_code;
	private String maincate_value;
	private int subcate_code;
	private String subcate_value;
	
	
	public Bean_Category() {
		super();
	}


	public Bean_Category(int maincate_code, String maincate_value, int subcate_code, String subcate_value) {
		super();
		this.maincate_code = maincate_code;
		this.maincate_value = maincate_value;
		this.subcate_code = subcate_code;
		this.subcate_value = subcate_value;
	}


	public int getMaincate_code() {
		return maincate_code;
	}


	public void setMaincate_code(int maincate_code) {
		this.maincate_code = maincate_code;
	}


	public String getMaincate_value() {
		return maincate_value;
	}


	public void setMaincate_value(String maincate_value) {
		this.maincate_value = maincate_value;
	}


	public int getSubcate_code() {
		return subcate_code;
	}


	public void setSubcate_code(int subcate_code) {
		this.subcate_code = subcate_code;
	}


	public String getSubcate_value() {
		return subcate_value;
	}


	public void setSubcate_value(String subcate_value) {
		this.subcate_value = subcate_value;
	}
	
	
	
	
	

}
