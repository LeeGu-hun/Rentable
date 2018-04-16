package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bean.Bean_Category;
import bean.bean_rent_order_items;
import bean.bean_rent_orders;
import bean.bean_rent_products;
import bean.bean_rent_review;
import bean.bean_rent_users;
import service.ItemService;
import service.MainService;
import service.ProdService;

@Controller
public class ProdController {
	private ProdService prodService;
	private MainService mainService;
	private ItemService itemService;

	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}

	public void setProdService(ProdService prodService) {
		this.prodService = prodService;
	}

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

	@RequestMapping("/ProdDetail/{id}")
	public String boardDetail(@PathVariable("id") int pId, Model model, HttpSession session,
			bean_rent_products prodBean, HttpServletRequest request) {
		prodBean = prodService.prodView(pId);
		List<bean_rent_review> reviewlist = null;
		reviewlist = itemService.Reviewlist(prodBean);
		model.addAttribute("reviewlist", reviewlist);
		model.addAttribute("category", getMainCategory());
		model.addAttribute("path", getPath(request));
		model.addAttribute("prodBean", prodBean);
		session.setAttribute("prodBean", prodBean);
		return "main";
	}

	@RequestMapping("/ProdPay")
	public String prodPay(HttpServletRequest request, Model model, HttpSession session) {
		String stdate = request.getParameter("stdate");
		String eddate = request.getParameter("eddate");
		String allPrice = request.getParameter("allPrice");

		bean_rent_products prodBean = (bean_rent_products) session.getAttribute("prodBean");
		bean_rent_users usersInfo = (bean_rent_users) session.getAttribute("userInfo");

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
		model.addAttribute("category", getMainCategory());
		model.addAttribute("path", getPath(request));
		model.addAttribute("usersInfo", usersInfo);
		model.addAttribute("prodBean", prodBean);
		return "main";
	}

	@RequestMapping(value = "/CompPay", method = RequestMethod.POST)
	public String compPay(HttpServletRequest request, Model model, HttpSession session, bean_rent_orders orders) {
		bean_rent_users usersInfo = (bean_rent_users) session.getAttribute("userInfo");
		bean_rent_products prodBean = (bean_rent_products) session.getAttribute("prodBean");
		bean_rent_order_items ordersItems=new bean_rent_order_items();
		int orderNum = 0;
		int allPrice = Integer.parseInt(request.getParameter("allPrice"));
		String stdate = request.getParameter("stdate");
		String eddate = request.getParameter("eddate");
		String delivery_addr1 = request.getParameter("delivery_addr1");
		String delivery_name = request.getParameter("delivery_name");
		String delivery_hp1 = request.getParameter("delivery_hp1");
		String delivery_hp2 = request.getParameter("delivery_hp2");
		String delivery_hp3 = request.getParameter("delivery_hp3");
		String delivery_hp4 = delivery_hp1 + "-" + delivery_hp2 + "-" + delivery_hp3;
		String order_contents = request.getParameter("order_contents");

		orders.setRO_usernum(usersInfo.getR_idnum());
		orders.setRO_total(allPrice);

		prodService.prodOrders(orders);
		orderNum = prodService.orderNum();
		ordersItems.setROI_buyeraddress(delivery_addr1);
		ordersItems.setROI_buyername(delivery_name);
		ordersItems.setROI_buyerphone(delivery_hp4);
		ordersItems.setROI_buyidnum(usersInfo.getR_idnum());
		ordersItems.setROI_comment(order_contents);
		ordersItems.setROI_enddate(eddate);
		ordersItems.setROI_itemnum(prodBean.getRP_itemnum());
		ordersItems.setROI_ordernum(orderNum);
		ordersItems.setROI_price(allPrice);
		ordersItems.setROI_saleidnum(prodBean.getRP_usernum());
		ordersItems.setROI_startdate(stdate);
		ordersItems.setROI_stat("대여중");

		prodService.prodOrdersItem(ordersItems);
		model.addAttribute("category", getMainCategory());
		model.addAttribute("path", getPath(request));
		return "main";
	}

}
