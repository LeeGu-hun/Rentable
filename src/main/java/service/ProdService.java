package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.bean_rent_order_items;
import bean.bean_rent_orders;
import bean.bean_rent_products;
import bean.bean_rent_question;
import bean.bean_rent_user_slae;
import bean.bean_rent_users;
import bean.bean_rent_users_info;

@Service
public class ProdService {

	@Autowired
	private SqlSession sqlSession;

	public bean_rent_products prodView(int num) {
		bean_rent_products prod = sqlSession.selectOne("prodSQL.prodView", num);
		return prod;
	}

	public void prodOrders(bean_rent_orders orders) {
		sqlSession.insert("prodSQL.orderInsert", orders);
	}

	public int orderNum() {
		int orderNum1 = sqlSession.selectOne("prodSQL.orderNum");
		return orderNum1;
	}
	
	public void prodOrdersItem(bean_rent_order_items ordersItems) {
		sqlSession.insert("prodSQL.orderItemInsert", ordersItems);
	}

	public List<bean_rent_user_slae> userSaleBuy(int roi_buyidnum) {
		List<bean_rent_user_slae> userSale=sqlSession.selectList("prodSQL.userSaleBuy",roi_buyidnum);
		return userSale;
	}

	public List<bean_rent_user_slae> userSaleSell(int roi_sellidnum) {
		List<bean_rent_user_slae> userSale=sqlSession.selectList("prodSQL.userSaleSell",roi_sellidnum);
		return userSale;
	}

	public bean_rent_users_info prodUserSaleInfo(int rp_usernum) {
		bean_rent_users_info userSaleInfo=sqlSession.selectOne("prodSQL.userSaleInfo",rp_usernum);
		return userSaleInfo;
	}

	public void prodQuestion(bean_rent_question prodQuest) {
		sqlSession.insert("prodSQL.prodQue",prodQuest);
	}
	
	public List<bean_rent_question> prodAnswer(int prodAnswer) {
		List<bean_rent_question> prodQue=sqlSession.selectList("prodSQL.prodQueSel",prodAnswer);
		return prodQue;
	}

}
