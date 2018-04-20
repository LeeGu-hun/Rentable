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
import bean.ItemstatCommand;
import bean.bean_like_items;
import bean.bean_rent_order_items;
import bean.bean_rent_products;
import bean.bean_rent_user_slae;
import bean.bean_rent_users;
import service.MainService;
import service.ProdService;
import service.UserItemService;
@Controller
public class UserItemController {
	private ProdService prodService;
	private UserItemService useritemService;	
	public void setProdService(ProdService prodService) {
		this.prodService = prodService;
	}
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
		List<bean_rent_user_slae> userSale=null;
//		bean_rent_order_items roi = new bean_rent_order_items();
//		int ordernum = roi.getROI_ordernum();
		userSale=prodService.userSaleBuy(userInfo.getR_idnum());
//		model.addAttribute("ordernum",ordernum);
		model.addAttribute("userSale", userSale);
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
		List<bean_rent_user_slae> userSale=null;
		userSale=prodService.userSaleSell(userInfo.getR_idnum());
		model.addAttribute("userSale", userSale);
		model.addAttribute("path", getPath(request));
		model.addAttribute("category", getMainCategory());
		return "main";
	}
	
	@RequestMapping("/ItemLike")
	public String insertModify(HttpSession session,Model model, ItemCommand cmd) {
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		bean_rent_products prodBean = (bean_rent_products) session.getAttribute("prodBean");
		bean_like_items like =new bean_like_items();
		like.setRL_itemname(cmd.getRP_itemname());
		like.setRL_itemnum(cmd.getRP_itemnum());
		like.setRL_price(cmd.getRP_price());
		like.setRL_usernum(userInfo.getR_idnum());
		like.setRL_stat(prodBean.getROI_stat());
		
		try {
			useritemService.LikeInsert(like);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/";
	}
	@RequestMapping("/likeDelete/{o}")
	public String LikeDelete(@PathVariable("o")int num, Model model) {
		model.addAttribute("delete", useritemService.LikeDelete(num));
		
		return "redirect:/user_interlist";
	}
	@RequestMapping("/StatModify/{s}")
	public String StatModify(@PathVariable("s")int num, Model model,HttpServletRequest request,ItemstatCommand cmd) {
		bean_rent_order_items roi = new bean_rent_order_items();
		
		roi.setROI_stat("거래 완료");
		roi.setROI_ordernum(num);
		useritemService.StatUpdate(roi);
		
		return "redirect:/user_loanlist";
	}

	

}
