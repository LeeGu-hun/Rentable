package controller;

import java.io.File;
import java.io.IOException;

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
import bean.bean_rent_products;
import bean.bean_rent_users;
import service.ItemService;

@Controller
public class ItemController {

	private ItemService itemService;

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
		System.out.println("물품등록시작");
		if (multi != null) {
			originalFilename = multi.getOriginalFilename();
			newFilename = System.currentTimeMillis() + "_" + originalFilename;
			String root_path = request.getSession().getServletContext().getRealPath("/");
			String attach_path = "upload_products/";
			String path1 = root_path + attach_path + newFilename;
			System.out.println(path1);

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
}
