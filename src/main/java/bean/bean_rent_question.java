package bean;


public class bean_rent_question {


private String	RC_SENDER;
private int	RC_RECEIVER;
private String	RC_CONTENT;
private String RC_READTIME;
private String RC_SENDTIME;
private int	RC_USERNUM;
private int	RC_PRODNUM;
private int	RC_num=0;
public bean_rent_question(String rC_SENDER, int rC_RECEIVER, String rC_CONTENT, String rC_READTIME, String rC_SENDTIME,
		int rC_USERNUM, int rC_PRODNUM, int rC_num) {
	super();
	RC_SENDER = rC_SENDER;
	RC_RECEIVER = rC_RECEIVER;
	RC_CONTENT = rC_CONTENT;
	RC_READTIME = rC_READTIME;
	RC_SENDTIME = rC_SENDTIME;
	RC_USERNUM = rC_USERNUM;
	RC_PRODNUM = rC_PRODNUM;
	RC_num = rC_num;
}
public bean_rent_question() {
	super();
	// TODO Auto-generated constructor stub
}
public String getRC_SENDER() {
	return RC_SENDER;
}
public void setRC_SENDER(String rC_SENDER) {
	RC_SENDER = rC_SENDER;
}
public int getRC_RECEIVER() {
	return RC_RECEIVER;
}
public void setRC_RECEIVER(int rC_RECEIVER) {
	RC_RECEIVER = rC_RECEIVER;
}
public String getRC_CONTENT() {
	return RC_CONTENT;
}
public void setRC_CONTENT(String rC_CONTENT) {
	RC_CONTENT = rC_CONTENT;
}
public String getRC_READTIME() {
	return RC_READTIME;
}
public void setRC_READTIME(String rC_READTIME) {
	RC_READTIME = rC_READTIME;
}
public String getRC_SENDTIME() {
	return RC_SENDTIME;
}
public void setRC_SENDTIME(String rC_SENDTIME) {
	RC_SENDTIME = rC_SENDTIME;
}
public int getRC_USERNUM() {
	return RC_USERNUM;
}
public void setRC_USERNUM(int rC_USERNUM) {
	RC_USERNUM = rC_USERNUM;
}
public int getRC_PRODNUM() {
	return RC_PRODNUM;
}
public void setRC_PRODNUM(int rC_PRODNUM) {
	RC_PRODNUM = rC_PRODNUM;
}
public int getRC_num() {
	return RC_num;
}
public void setRC_num(int rC_num) {
	RC_num = rC_num;
}

}
