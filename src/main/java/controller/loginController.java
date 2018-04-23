package controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bean.DelayCommand;
import bean.bean_rent_users;
import service.MemberService;
import spring.IdPasswordNotMatchingException;

@Controller
public class loginController {

	private MemberService memberService;
	private bean_rent_users usersInfo;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	public void setUsersInfo(bean_rent_users usersInfo) {
		this.usersInfo = usersInfo;
	}

	@RequestMapping("/loginAction")
	public String loginAction(Model model, HttpServletRequest request, HttpSession session) {
		String r_id = request.getParameter("R_id");
		String r_password = request.getParameter("R_password");
		usersInfo = memberService.loginMember(r_id);
		session.setAttribute("userInfo", usersInfo);
		String main = "";
		if (r_password.equals(usersInfo.getR_password())) {
			int R_idnum = usersInfo.getR_idnum();
			List<DelayCommand> delayInfo = memberService.checkBlockUser(R_idnum);
			session.setAttribute("delayInfo", delayInfo);
			main = "redirect:/";
		} else {
			main = "login/loginForm";
		}
		return main;
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:/";
	}

}
