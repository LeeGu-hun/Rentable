package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import bean.bean_rent_products;
import service.MainService;

@Controller
public class MainController {

	private MainService mainService;

	public void setMainService(MainService mainService) {
		this.mainService = mainService;
	}
	
	@RequestMapping("/main")
	public String index(Model model) {
		System.out.println("인덱스");
		System.out.println("getmainlist 실행");
		List<bean_rent_products> mainlist = null;
		mainlist = mainService.getmainlist();
		model.addAttribute("mainlist", mainlist);
		return "index";
	}

	@RequestMapping("/{path}")
	public String main(@PathVariable("path") String path, Model model) {
		if (path.equals("cateitemlist")) {
			System.out.println("카테고리 이동");
			model.addAttribute("path", path);
		} 
		return "index";
	}

	// @RequestMapping("/cateitemlist")
	// public String category(HttpServletRequest request, Model model) {
	// String path = request.getServletPath();
	// model.addAttribute("path", path);
	// return "index";
	// }

}
