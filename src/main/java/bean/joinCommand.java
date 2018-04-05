package bean;

import java.util.Date;

public class joinCommand {
   private String R_id; // 아이디
   private String R_password; // 비밀번호
   private String R_name; // 이름
   private String R_address; // 주소
   private String R_phone; // 전화번호
   private String R_card; // 카드명
   private String R_cardnum;//카드번호
   
   public joinCommand() {}
   
   public joinCommand(String r_id, String r_password, String r_name, String r_address, String r_phone, String r_card,
         String r_cardnum) {
      super();
      R_id = r_id;
      R_password = r_password;
      R_name = r_name;
      R_address = r_address;
      R_phone = r_phone;
      R_card = r_card;
      R_cardnum = r_cardnum;
   }
   public String getR_id() {
      return R_id;
   }
   public void setR_id(String r_id) {
      R_id = r_id;
   }
   public String getR_password() {
      return R_password;
   }
   public void setR_password(String r_password) {
      R_password = r_password;
   }
   public String getR_name() {
      return R_name;
   }
   public void setR_name(String r_name) {
      R_name = r_name;
   }
   public String getR_address() {
      return R_address;
   }
   public void setR_address(String r_address) {
      R_address = r_address;
   }
   public String getR_phone() {
      return R_phone;
   }
   public void setR_phone(String r_phone) {
      R_phone = r_phone;
   }
   public String getR_card() {
      return R_card;
   }
   public void setR_card(String r_card) {
      R_card = r_card;
   }
   public String getR_cardnum() {
      return R_cardnum;
   }
   public void setR_cardnum(String r_cardnum) {
      R_cardnum = r_cardnum;
   }


   
}