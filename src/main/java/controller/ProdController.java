package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import bean.bean_rent_products;
import bean.bean_rent_users;
import service.ProdService;

@Controller
public class ProdController {
	 private ProdService prodService;
	public void setProdService(ProdService prodService) {
		this.prodService = prodService;
	}
	

	@RequestMapping("/ProdDetail/{id}")
	public String boardDetail(@PathVariable("id") int pId, Model model, HttpSession session,bean_rent_products prodBean) {
		prodBean = prodService.prodView(pId);
		model.addAttribute("prodBean", prodBean);
		session.setAttribute("prodBean", prodBean);
	
		return "item/itemdetail";
	}


	@RequestMapping("ItemPay")
	public String boardPay(HttpServletRequest request,Model model,HttpSession session) {
		String stdate = request.getParameter("stdate");
		String eddate = request.getParameter("eddate");
		String allPrice = request.getParameter("allPrice");
		bean_rent_products prodBean=(bean_rent_products)session.getAttribute("prodBean");
		bean_rent_users usersInfo=(bean_rent_users) session.getAttribute("userInfo");
	    System.out.println(allPrice);
		String phone1 = usersInfo.getR_phone().split("-")[0];
	    String phone2 = usersInfo.getR_phone().split("-")[1];
	    String phone3 = usersInfo.getR_phone().split("-")[2];
	    String card1 = usersInfo.getR_cardnum().split("-")[0];
	    String card2 = usersInfo.getR_cardnum().split("-")[1];
	    String card3 = usersInfo.getR_cardnum().split("-")[2];
	    String card4 = usersInfo.getR_cardnum().split("-")[3];
	    
	    
	    model.addAttribute("phone1", phone1);
	    model.addAttribute("phone2", phone2);
	    model.addAttribute("phone3", phone3);
	    model.addAttribute("card1", card1);
	    model.addAttribute("card2", card2);
	    model.addAttribute("card3", card3);
	    model.addAttribute("card4", card4);
	    model.addAttribute("stdate", stdate);
	    model.addAttribute("eddate", eddate);
	    model.addAttribute("allPrice", allPrice);
	    
	    model.addAttribute("usersInfo", usersInfo);
		model.addAttribute("prodBean", prodBean);
		return "/item/itempay";
	}
	@RequestMapping("/CompPay")
	public String compPay(HttpServletRequest request,Model model,HttpSession session) {

		return "main";
	}

}
