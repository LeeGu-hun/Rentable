package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import bean.ItemCommand;
import bean.bean_rent_products;
import service.ItemService;

@Controller
public class ItemController {
	
	private ItemService itemService;
	
	
	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}

	@RequestMapping(value = "/ItemWrite", method = RequestMethod.GET)
	public String boardWriteGet(bean_rent_products rent) {
		return "item/iteminsert";
	}

	@RequestMapping(value = "/ItemWrite", method = RequestMethod.POST)
	public String boardWritePost(ItemCommand item, HttpSession session, HttpServletRequest request) {
		MultipartFile multi = item.getRP_img1();
		MultipartFile multi2 = item.getRP_img2();
		MultipartFile multi3 = item.getRP_img3();
		String originalFilename = "", newFilename = "";
		if (multi != null) {
			originalFilename = multi.getOriginalFilename();
			newFilename = System.currentTimeMillis() + "_" + originalFilename;
			String root_path = request.getSession().getServletContext().getRealPath("/");
			String attach_path = "upload/";
			String path = root_path + attach_path + newFilename;

			try {
				File file = new File(path);
				multi.transferTo(file);
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
		if (multi2 != null) {
			originalFilename = multi2.getOriginalFilename();
			newFilename = System.currentTimeMillis() + "_" + originalFilename;
			String root_path = request.getSession().getServletContext().getRealPath("/");
			String attach_path = "upload/";
			String path = root_path + attach_path + newFilename;

			try {
				File file = new File(path);
				multi2.transferTo(file);
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
		if (multi3 != null) {
			originalFilename = multi3.getOriginalFilename();
			newFilename = System.currentTimeMillis() + "_" + originalFilename;
			String root_path = request.getSession().getServletContext().getRealPath("/");
			String attach_path = "upload/";
			String path = root_path + attach_path + newFilename;

			try {
				File file = new File(path);
				multi3.transferTo(file);
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
//		AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
		bean_rent_products pd = new bean_rent_products();
		
//		pd.setRP_usernum(authInfo.getUsernum());
		pd.setRP_itemnum(item.getRP_itemnum());
		pd.setRP_catemain(item.getRP_catemain());
		pd.setRP_catesub(item.getRP_catesub());
		pd.setRP_detail(item.getRP_detail());
		pd.setRP_enddate(item.getRP_enddate());
		pd.setRP_startdate(item.getRP_startdate());
		pd.setRP_guarantee(item.getRP_guarantee());
		pd.setRP_img1(newFilename);
		pd.setRP_img2(newFilename);
		pd.setRP_img3(newFilename);
		pd.setRP_itemname(item.getRP_itemname());
		pd.setRP_itemstat(item.getRP_itemstat());
		pd.setRP_price(item.getRP_price());
		pd.setRP_regdate(item.getRP_regdate());
		itemService.ItemInsert(pd);
		

		return "redirect:/main";
	}

}
