package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bean.Bean_Category;
import bean.bean_rent_users;
import service.AdminService;
import service.MainService;

@Controller
public class AdminController {

	private AdminService adminService;
	private MainService mainService;

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
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

	@RequestMapping("/user_manage")
	public String userManage(Model model, HttpServletRequest request) {
		List<bean_rent_users> userlist = adminService.getUserList();
		adminService.getInvaildList();
		model.addAttribute("userlist", userlist);
		model.addAttribute("path",getPath(request));
		model.addAttribute("category",getMainCategory());
		return "main";
	}

}
