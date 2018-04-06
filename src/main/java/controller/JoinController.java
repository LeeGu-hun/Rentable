package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.bean_rent_users;
import bean.joinCommand;
import service.JoinService;

@Controller
public class JoinController {
	private JoinService joinService;

	public void setJoinService(JoinService joinService) {
		this.joinService = joinService;
	}

	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String JoinUserGet(bean_rent_users rent) {
		System.out.println("1");
		return "login/joinForm";
	}

	@RequestMapping(value = "/joinAction", method = RequestMethod.POST)
	public String JoinUserPost(joinCommand join, HttpSession session, HttpServletRequest request) {
		bean_rent_users bru = new bean_rent_users();
		bru.setR_id(join.getR_id());
		bru.setR_password(join.getR_password());
		bru.setR_name(join.getR_name());
		bru.setR_address(join.getR_address());
		bru.setR_phone(join.getR_phone());
		bru.setR_card(join.getR_card());
		bru.setR_cardnum(join.getR_cardnum());
		joinService.JoinUser(bru);
		return "login/loginForm";
	}
}