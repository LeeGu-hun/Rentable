package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import bean.Bean_Category;
import bean.bean_rent_users;
import bean.joinCommand;
import service.JoinService;
import service.MainService;

@Controller
public class JoinController {
	private JoinService joinService;
	private MainService mainService;

	public void setJoinService(JoinService joinService) {
		this.joinService = joinService;
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

	@RequestMapping("/joinForm")
	public String JoinUserGet(bean_rent_users rent) {
		System.out.println("1");
		return "login/joinForm";
	}

	@RequestMapping("/loginForm")
	public String loginForm() {
		return "login/loginForm";
	}

	@RequestMapping("/joinAction")
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

	@RequestMapping("/user_modify")
	public String userModify(Model model, HttpSession session, HttpServletRequest request) {
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		String phone1 = userInfo.getR_phone().split("-")[0];
		String phone2 = userInfo.getR_phone().split("-")[1];
		String phone3 = userInfo.getR_phone().split("-")[2];
		model.addAttribute("phone1", phone1);
		model.addAttribute("phone2", phone2);
		model.addAttribute("phone3", phone3);

		String card1 = userInfo.getR_cardnum().split("-")[0];
		String card2 = userInfo.getR_cardnum().split("-")[1];
		String card3 = userInfo.getR_cardnum().split("-")[2];
		String card4 = userInfo.getR_cardnum().split("-")[3];
		model.addAttribute("card1", card1);
		model.addAttribute("card2", card2);
		model.addAttribute("card3", card3);
		model.addAttribute("card4", card4);
		model.addAttribute("userInfo", userInfo);
		model.addAttribute("category", getMainCategory());
		model.addAttribute("path",getPath(request));
		return "main";
	}

}