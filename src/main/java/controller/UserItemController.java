package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import bean.Bean_Category;
import bean.ItemCommand;
import bean.bean_like_items;
import bean.bean_rent_products;
import bean.bean_rent_users;
import service.MainService;
import service.UserItemService;
@Controller
public class UserItemController {
	
	UserItemService useritemService;
	public void setUseritemService(UserItemService useritemService) {
		this.useritemService = useritemService;
	}
	private MainService mainService;

	public void setMainService(MainService mainService) {
		this.mainService = mainService;
	}

	public List<Bean_Category> getMainCategory() {
		return mainService.getCategory();
	}
	
	public String getPath(HttpServletRequest request) {
		String realPath = request.getServletPath();
		String path = realPath.split("/")[1];
		return path;
	}
	
	@RequestMapping("/user_interlist")
	public String userInterlist(Model model, HttpSession session,HttpServletRequest request ) {
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		List<bean_like_items> likelist = null;
		likelist = useritemService.Likelist(userInfo);
		model.addAttribute("likelist", likelist);
		model.addAttribute("path", getPath(request));
		model.addAttribute("category", getMainCategory());
		return "main";
	}
	@RequestMapping("/user_rentlist")
	public String userRentlist(Model model, HttpSession session,HttpServletRequest request ) {
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		model.addAttribute("path", getPath(request));
		model.addAttribute("category", getMainCategory());
		return "main";
	}
	@RequestMapping("/user_registerlist")
	public String userRegisterlist(Model model, HttpSession session ,HttpServletRequest request ) {
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		List<bean_rent_products> itemlist = null;
		itemlist = useritemService.Myitemlist(userInfo);
		model.addAttribute("itemlist", itemlist);
		model.addAttribute("path", getPath(request));
		model.addAttribute("category", getMainCategory());
		
		return "main";
	}
	
	@RequestMapping("/user_loanlist")
	public String userLoanlist(Model model, HttpSession session,HttpServletRequest request ) {
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		model.addAttribute("path", getPath(request));
		model.addAttribute("category", getMainCategory());
		return "main";
	}
	
	@RequestMapping("/ItemLike")
	public String insertModify(HttpSession session,Model model, ItemCommand cmd) {
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		bean_like_items like =new bean_like_items();
		like.setRL_itemname(cmd.getRP_itemname());
		like.setRL_itemnum(cmd.getRP_itemnum());
		like.setRL_price(cmd.getRP_price());
		like.setRL_usernum(userInfo.getR_idnum());
		
		useritemService.LikeInsert(like);
		
		return "redirect:/";
	}
	@RequestMapping("/likeDelete/{o}")
	public String LikeDelete(@PathVariable("o")int num, Model model) {
		model.addAttribute("delete", useritemService.LikeDelete(num));
		
		return "redirect:/user_interlist";
	}

	

}
