package controller;

import java.io.File;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import bean.ItemCommand;
import bean.bean_like_items;
import bean.bean_rent_products;
import bean.bean_rent_review;
import bean.bean_rent_users;
import bean.reviewCommand;
import service.ItemService;
import service.MainService;
import service.ProdService;

@Controller
public class ItemController {

	private ItemService itemService;
	private ProdService prodService;
	



	public void setProdService(ProdService prodService) {
		this.prodService = prodService;
	}

	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}

	@RequestMapping(value = "/iteminsert", method = RequestMethod.GET)
	public String itemInsertGet(bean_rent_products pd) {
		System.out.println("1");
		return "redirect:/main";
	}

	@RequestMapping(value = "/itemInsertAction", method = RequestMethod.POST)
	public String itemInsertPost(ItemCommand item, HttpSession session, HttpServletRequest request) {
		MultipartFile multi = item.getRP_img1();
		MultipartFile multi2 = item.getRP_img2();
		MultipartFile multi3 = item.getRP_img3();
		String originalFilename = "", newFilename = "";
		String originalFilename2 = "", newFilename2 = "";
		String originalFilename3 = "", newFilename3 = "";

		if (multi != null) {
			originalFilename = multi.getOriginalFilename();
			newFilename = System.currentTimeMillis() + "_" + originalFilename;
			String root_path = request.getSession().getServletContext().getRealPath("/");
			String attach_path = "upload_products/";
			String path1 = root_path + attach_path + newFilename;

			try {
				File file = new File(path1);
				multi.transferTo(file);
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
		if (multi2 != null) {
			originalFilename2 = multi2.getOriginalFilename();
			newFilename2 = System.currentTimeMillis() + "_" + originalFilename2;
			String root_path = request.getSession().getServletContext().getRealPath("/");
			String attach_path = "upload_products/";
			String path1 = root_path + attach_path + newFilename2;

			try {
				File file = new File(path1);
				multi2.transferTo(file);
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
		if (multi3 != null) {
			originalFilename3 = multi3.getOriginalFilename();
			newFilename3 = System.currentTimeMillis() + "_" + originalFilename3;
			String root_path = request.getSession().getServletContext().getRealPath("/");
			String attach_path = "upload_products/";
			String path1 = root_path + attach_path + newFilename3;

			try {
				File file = new File(path1);
				multi3.transferTo(file);
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		bean_rent_products pd = new bean_rent_products();

		pd.setRP_usernum(userInfo.getR_idnum());
		pd.setRP_itemnum(item.getRP_itemnum());
		pd.setRP_catemain(item.getRP_catemain());
		pd.setRP_catesub(item.getRP_catesub());
		pd.setRP_detail(item.getRP_detail());
		pd.setRP_enddate(item.getRP_enddate());
		pd.setRP_startdate(item.getRP_startdate());
		pd.setRP_guarantee(item.getRP_guarantee());
		pd.setRP_img1(newFilename);
		pd.setRP_img2(newFilename2);
		pd.setRP_img3(newFilename3);
		pd.setRP_itemname(item.getRP_itemname());
		pd.setRP_itemstat(item.getRP_itemstat());
		pd.setRP_price(item.getRP_price());
		pd.setRP_regdate(item.getRP_regdate());
		itemService.ItemInsert(pd);

		return "redirect:/";

	}
	
	@RequestMapping("/ItemModify/{v}")
	public String insertModify(@PathVariable("v") int pId, Model model, bean_rent_products prodBean) {
		prodBean = prodService.prodView(pId);
		model.addAttribute("prodBean", prodBean);
		return "main";
	}
	@RequestMapping(value = "/itemModifyAction", method = RequestMethod.POST)
	public String itemModifyPost(ItemCommand item, HttpSession session, HttpServletRequest request) {
		MultipartFile multi = item.getRP_img1();
		MultipartFile multi2 = item.getRP_img2();
		MultipartFile multi3 = item.getRP_img3();
		String originalFilename = "", newFilename = "";
		String originalFilename2 = "", newFilename2 = "";
		String originalFilename3 = "", newFilename3 = "";

		if (multi != null) {
			originalFilename = multi.getOriginalFilename();
			newFilename = System.currentTimeMillis() + "_" + originalFilename;
			String root_path = request.getSession().getServletContext().getRealPath("/");
			String attach_path = "upload_products/";
			String path1 = root_path + attach_path + newFilename;

			try {
				File file = new File(path1);
				multi.transferTo(file);
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
		if (multi2 != null) {
			originalFilename2 = multi2.getOriginalFilename();
			newFilename2 = System.currentTimeMillis() + "_" + originalFilename2;
			String root_path = request.getSession().getServletContext().getRealPath("/");
			String attach_path = "upload_products/";
			String path1 = root_path + attach_path + newFilename2;

			try {
				File file = new File(path1);
				multi2.transferTo(file);
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
		if (multi3 != null) {
			originalFilename3 = multi3.getOriginalFilename();
			newFilename3 = System.currentTimeMillis() + "_" + originalFilename3;
			String root_path = request.getSession().getServletContext().getRealPath("/");
			String attach_path = "upload_products/";
			String path1 = root_path + attach_path + newFilename3;

			try {
				File file = new File(path1);
				multi3.transferTo(file);
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		bean_rent_products pd = new bean_rent_products();
		pd.setRP_usernum(userInfo.getR_idnum());
		pd.setRP_itemnum(item.getRP_itemnum());
		pd.setRP_itemname(item.getRP_itemname());
		pd.setRP_catemain(item.getRP_catemain());
		pd.setRP_catesub(item.getRP_catesub());
		pd.setRP_detail(item.getRP_detail());
		pd.setRP_enddate(item.getRP_enddate());
		pd.setRP_startdate(item.getRP_startdate());
		pd.setRP_img1(newFilename);
		pd.setRP_img2(newFilename2);
		pd.setRP_img3(newFilename3);
		pd.setRP_price(item.getRP_price());
		itemService.ItemUpdate(pd);

		return "redirect:/";

	}

	@RequestMapping("/itemDelete/{i}")
	public String ItemDelete(@PathVariable("i")int num, Model model) {
		
			
			model.addAttribute("delete", itemService.ItemDelete(num));
			
			
		return "redirect:/";
	}
	@RequestMapping( value = "/itemReview", method = RequestMethod.POST)
	public String itemreview(reviewCommand review, HttpSession session, HttpServletRequest request) {
		bean_rent_users userInfo = (bean_rent_users) session.getAttribute("userInfo");
		bean_rent_review re =  new bean_rent_review();
		re.setRR_userid(userInfo.getR_id());
		re.setRR_usernum(userInfo.getR_idnum());
		re.setRR_content(review.getRR_content());
		re.setRR_grade(review.getRR_grade());
		re.setRR_itemnum(review.getRR_itemnum());
		int nn=review.getRR_itemnum();
		itemService.ReviewInsert(re);

		return "redirect:/ProdDetail/"+nn;

	}
	


	
	
}
