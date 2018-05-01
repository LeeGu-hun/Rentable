package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import bean.Bean_Category;
import bean.bean_rent_products;
import service.MainService;

@Controller
public class MainController {

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

	@RequestMapping("/")
	public String main1(Model model, @RequestParam(defaultValue = "all") String maincate,
			@RequestParam(defaultValue = "all") String subcate, @RequestParam(defaultValue = "") String orderby,
			@RequestParam(defaultValue = "all") String keyword) {
		Bean_Category catebean = new Bean_Category();
		catebean.setMaincate_value(maincate);
		catebean.setSubcate_value(subcate);
		catebean.setKeyword(keyword);
		catebean.setOrderby(orderby);
		// 카테고리 아이템 목록 가져오기
		List<bean_rent_products> mainlist = null;
		mainlist = mainService.getMainCateitems(catebean);
		model.addAttribute("category", getMainCategory());
		model.addAttribute("mainlist", mainlist);
		return "main";
	}

	@RequestMapping("/category")
	public String main(HttpServletRequest request, Model model, @RequestParam(defaultValue = "all") String maincate,
			@RequestParam(defaultValue = "all") String subcate, @RequestParam(defaultValue = "") String orderby,
			@RequestParam(defaultValue = "all") String keyword) {
		Bean_Category catebean = new Bean_Category();
		catebean.setMaincate_value(maincate);
		catebean.setSubcate_value(subcate);
		catebean.setKeyword(keyword);
		catebean.setOrderby(orderby);
		// 카테고리 아이템 목록 가져오기
		List<bean_rent_products> maincatelist = null;
		maincatelist = mainService.getMainCateitems(catebean);
		// 카테고리 서브 목록 가져오기
		List<bean_rent_products> subcatelist = null;
		subcatelist = mainService.getSubcate(maincate);
		model.addAttribute("category", getMainCategory());
		model.addAttribute("maincate", maincate);
		model.addAttribute("maincatelist", maincatelist);
		model.addAttribute("subcatelist", subcatelist);
		model.addAttribute("subcate", subcate);
		model.addAttribute("keyword", keyword);
		model.addAttribute("path", getPath(request));
		return "main";
	}

	// @RequestMapping("/ProdDetail/{id}")
	// public String boardDetail(@PathVariable("id") int pId, Model model,
	// bean_rent_products prodBean,
	// HttpServletRequest request) {
	// prodBean = mainService.prodView(pId);
	// model.addAttribute("path", getPath(request));
	// model.addAttribute("category", getMainCategory());
	// model.addAttribute("prodBean", prodBean);
	// return "main";
	// }

	@RequestMapping("/ProdInsert")
	public String prodInsert(HttpServletRequest request, Model model) {
		model.addAttribute("category", getMainCategory());
		model.addAttribute("path", getPath(request));
		return "main";
	}

	@RequestMapping("/search")
	public String searchProd(HttpServletRequest request, Model model, @RequestParam(defaultValue = "all") String keyword) {
		bean_rent_products catebean = new bean_rent_products();
		List<bean_rent_products> maincatelist = null;
		maincatelist = mainService.getSearchitems(keyword);
		model.addAttribute("maincatelist", maincatelist);
		model.addAttribute("category", getMainCategory());
		model.addAttribute("path", getPath(request));
		model.addAttribute("keyword", keyword);
		return "main";
	}

	// @RequestMapping("/cateitemlist")
	// public String category(HttpServletRequest request, Model model) {
	// String path = request.getServletPath();
	// model.addAttribute("path", path);
	// return "index";
	// }

	@RequestMapping(value = "/json1", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	public @ResponseBody String getJson(HttpServletRequest request, Model model,
			@RequestParam(defaultValue = "all") String maincate, @RequestParam(defaultValue = "all") String subcate,
			@RequestParam(defaultValue = "") String orderby, @RequestParam(defaultValue = "all") String keyword) {
		Bean_Category catebean = new Bean_Category();
		catebean.setMaincate_value(maincate);
		catebean.setSubcate_value(subcate);
		catebean.setKeyword(keyword);
		catebean.setOrderby(orderby);

		Gson gson = new Gson();
		List<bean_rent_products> items = mainService.getMainCateitems(catebean);
		String result = gson.toJson(items);
		return gson.toJson(items);

	}

	@RequestMapping("/jsonTest")
	public String jsonTest() {

		return "test/json";
	}
}
