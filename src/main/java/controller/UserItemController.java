package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bean.bean_rent_products;
import bean.bean_rent_users;
import service.UserItemService;
@Controller
public class UserItemController {
	
	UserItemService useritemService;
	public void setUseritemService(UserItemService useritemService) {
		this.useritemService = useritemService;
	}
	
	@RequestMapping("/user_interlist")
	public String userInterlist(Model model, HttpSession session) {
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		return "myPage/user_interlist";
	}
	@RequestMapping("/user_rentlist")
	public String userRentlist(Model model, HttpSession session) {
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		return "myPage/user_rentlist";
	}
	@RequestMapping("/user_registerlist")
	public String userRegisterlist(Model model, HttpSession session) {
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		List<bean_rent_products> itemlist = null;
		itemlist = useritemService.Myitemlist();
		model.addAttribute("itemlist", itemlist);
		
		return "myPage/user_registerlist";
	}
	
	@RequestMapping("/user_loanlist")
	public String userLoanlist(Model model, HttpSession session) {
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		return "myPage/user_loanlist";
	}
	

}
