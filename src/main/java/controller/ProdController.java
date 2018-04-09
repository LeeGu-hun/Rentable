package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import bean.bean_rent_products;
import service.ProdService;

@Controller
public class ProdController {
	 private ProdService prodService;
	public void setProdService(ProdService prodService) {
		this.prodService = prodService;
	}
	


}
