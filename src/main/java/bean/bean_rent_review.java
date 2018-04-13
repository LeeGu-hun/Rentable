package bean;

import org.springframework.web.multipart.MultipartFile;

public class bean_rent_review {
	
private int	RR_reviewnum;
private int	RR_itemnum;
private int	RR_usernum;
private String	RR_username;
private String	RR_subject;
private String	RR_content;
private MultipartFile	RR_img;
private String	RR_reddate;
private int	RR_grade;
public bean_rent_review(int rR_reviewnum, int rR_itemnum, int rR_usernum, String rR_username, String rR_subject,
		String rR_content, MultipartFile rR_img, String rR_reddate, int rR_grade) {
	super();
	RR_reviewnum = rR_reviewnum;
	RR_itemnum = rR_itemnum;
	RR_usernum = rR_usernum;
	RR_username = rR_username;
	RR_subject = rR_subject;
	RR_content = rR_content;
	RR_img = rR_img;
	RR_reddate = rR_reddate;
	RR_grade = rR_grade;
}
public int getRR_reviewnum() {
	return RR_reviewnum;
}
public void setRR_reviewnum(int rR_reviewnum) {
	RR_reviewnum = rR_reviewnum;
}
public int getRR_itemnum() {
	return RR_itemnum;
}
public void setRR_itemnum(int rR_itemnum) {
	RR_itemnum = rR_itemnum;
}
public int getRR_usernum() {
	return RR_usernum;
}
public void setRR_usernum(int rR_usernum) {
	RR_usernum = rR_usernum;
}
public String getRR_username() {
	return RR_username;
}
public void setRR_username(String rR_username) {
	RR_username = rR_username;
}
public String getRR_subject() {
	return RR_subject;
}
public void setRR_subject(String rR_subject) {
	RR_subject = rR_subject;
}
public String getRR_content() {
	return RR_content;
}
public void setRR_content(String rR_content) {
	RR_content = rR_content;
}
public MultipartFile getRR_img() {
	return RR_img;
}
public void setRR_img(MultipartFile rR_img) {
	RR_img = rR_img;
}
public String getRR_reddate() {
	return RR_reddate;
}
public void setRR_reddate(String rR_reddate) {
	RR_reddate = rR_reddate;
}
public int getRR_grade() {
	return RR_grade;
}
public void setRR_grade(int rR_grade) {
	RR_grade = rR_grade;
}
public bean_rent_review() {
	super();
	// TODO Auto-generated constructor stub
}



}
