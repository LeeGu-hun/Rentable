package bean;

import java.util.Date;

public class bean_rent_review {
	
private int	RR_reviewnum;
private int	RR_itemnum;
private int	RR_usernum;
private String	RR_userid;
private String	RR_subject;
private String	RR_content;
private String RR_img;
private Date	RR_regdate;
private int	RR_grade;
public bean_rent_review(int rR_reviewnum, int rR_itemnum, int rR_usernum, String rR_userid, String rR_subject,
		String rR_content, String rR_img, Date rR_regdate, int rR_grade) {
	super();
	RR_reviewnum = rR_reviewnum;
	RR_itemnum = rR_itemnum;
	RR_usernum = rR_usernum;
	RR_userid = rR_userid;
	RR_subject = rR_subject;
	RR_content = rR_content;
	RR_img = rR_img;
	RR_regdate = rR_regdate;
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
public String getRR_userid() {
	return RR_userid;
}
public void setRR_userid(String rR_userid) {
	RR_userid = rR_userid;
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
public String getRR_img() {
	return RR_img;
}
public void setRR_img(String rR_img) {
	RR_img = rR_img;
}
public Date getRR_regdate() {
	return RR_regdate;
}
public void setRR_regdate(Date rR_regdate) {
	RR_regdate = rR_regdate;
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
