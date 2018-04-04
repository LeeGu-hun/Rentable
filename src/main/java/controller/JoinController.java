package controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bean.bean_rent_users;
import bean.joinCommand;
import service.JoinService;

public class JoinController {
	 private JoinService joinService;
	 public void setJoinService(JoinService joinService) {
	      this.joinService = joinService;
	   }
	 @RequestMapping(value = "login/joinForm", method = RequestMethod.GET)
	   public String JoinUserGet(bean_rent_users rent) {
	      return "login/JoinForm";
	   }

	   @RequestMapping(value = "/joinForm", method = RequestMethod.POST)
	   public String JoinUserPost(joinCommand join) {
	      
	      bean_rent_users bru = new bean_rent_users();
	      
	      bru.setR_id(join.getR_id());
	      bru.setR_password(join.getR_password());
	      bru.setR_name(join.getR_name());
	      bru.setR_address(join.getR_address());
	      bru.setR_phone(join.getR_phone());
	      bru.setR_card(join.getR_card());
	      bru.setR_cardnum(join.getR_cardnum());
	      joinService.JoinUser(bru);

	      
	      
	      return "/";
	   }


}
