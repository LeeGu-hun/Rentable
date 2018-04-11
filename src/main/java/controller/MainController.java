package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bean.Bean_Category;
import bean.bean_rent_products;
import service.MainService;

@Controller
public class MainController {

	private MainService mainService;
	private String path = "main";

	public void setMainService(MainService mainService) {
		this.mainService = mainService;
	}

	@RequestMapping("/")
	public String main1(Model model) {
		List<bean_rent_products> mainlist = null;
		mainlist = mainService.getmainlist();
		List<Bean_Category> category = null;
		category = mainService.getCategory();
		model.addAttribute("category", category);
		model.addAttribute("mainlist", mainlist);
		return "main";
	}
	
	@RequestMapping("/category")
	public String main(HttpServletRequest request, Model model, @RequestParam("maincate") String maincate) {
		String realPath = request.getServletPath();
		String path = realPath.replace("/", "");
		System.out.println(path);
		List<bean_rent_products> maincatelist = null;
		maincatelist = mainService.getMainCateitems(maincate);
		List<bean_rent_products> subcatelist = null;
		subcatelist = mainService.getSubcate(maincate);
		List<Bean_Category> category = null;
		category = mainService.getCategory();
		model.addAttribute("category", category);
		model.addAttribute("maincatelist",maincatelist);
		model.addAttribute("subcatelist", subcatelist);
		model.addAttribute("path", path);
		return "main";
	}

	@RequestMapping("/ProdDetail/{id}")
	public String boardDetail(@PathVariable("id") int pId, Model model, bean_rent_products prodBean) {
		prodBean = mainService.prodView(pId);
		model.addAttribute("prodBean", prodBean);
		return "item/iteminsert2";
	}

	// @RequestMapping("/cateitemlist")
	// public String category(HttpServletRequest request, Model model) {
	// String path = request.getServletPath();
	// model.addAttribute("path", path);
	// return "index";
	// }

}
