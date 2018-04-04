package controller;

import java.util.List;
import java.util.Optional;

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
	private String path = "main";

	public void setMainService(MainService mainService) {
		this.mainService = mainService;
	}

	@RequestMapping("/")
	public String main1(Model model) {
		List<bean_rent_products> mainlist = null;
		mainlist = mainService.getmainlist();
		model.addAttribute("mainlist", mainlist);
		return "main";
	}

	@RequestMapping("/{path}")
	public String main(@PathVariable("path") String path, Model model) {
		if (path.equals("main")) {
			System.out.println("하이용");
		} else if (path.equals("cateitemlist")) {
			System.out.println("카테고리 이동");
			model.addAttribute("path", path);
		}
		return "main";
	}

	// @RequestMapping("/cateitemlist")
	// public String category(HttpServletRequest request, Model model) {
	// String path = request.getServletPath();
	// model.addAttribute("path", path);
	// return "index";
	// }

}
