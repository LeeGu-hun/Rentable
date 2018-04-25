package controller;

import static org.hamcrest.CoreMatchers.instanceOf;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.Bean_Category;
import bean.DelayCommand;
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
		model.addAttribute("path", getPath(request));
		model.addAttribute("category", getMainCategory());
		return "main";
	}

	@ResponseBody
	@RequestMapping("/invalid_user")
	public String inavalid_user(HttpSession session, @RequestParam int invalid_price, @RequestParam int item_num, Model model) {
		DelayCommand delay = new DelayCommand();
		bean_rent_users usersInfo = (bean_rent_users) session.getAttribute("userInfo");
		int user_num = usersInfo.getR_idnum();
		delay.setR_idnum(user_num);
		delay.setRP_itemnum(item_num);
		delay.setInvalid_price(invalid_price);
		adminService.update_userstat(delay);
		usersInfo.setR_stat("normal");
		return "success";
	}

}
