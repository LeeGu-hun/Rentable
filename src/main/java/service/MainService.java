package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.Bean_Category;
import bean.bean_rent_products;

@Service
public class MainService {

	@Autowired
	private SqlSession sqlSession;

	public List<bean_rent_products> getmainlist() {
		List<bean_rent_products> result = sqlSession.selectList("mainSQL.getMainItemList");
		return result;
	}

	public bean_rent_products prodView(int num) {
		bean_rent_products prod = sqlSession.selectOne("prodSQL.prodView", num);
		return prod;
	}

	public List<Bean_Category> getCategory() {
		List<Bean_Category> cateMain = sqlSession.selectList("mainSQL.maincate");
		return cateMain;
	}
	
	public List<bean_rent_products> getSubcate(String maincate) {
		List<bean_rent_products> catesub = sqlSession.selectList("mainSQL.subcate",maincate);
		return catesub;
	}
	
	public List<bean_rent_products> getMainCateitems(bean_rent_products catebean) {
		List<bean_rent_products> catesub = sqlSession.selectList("mainSQL.getmaincateitems",catebean);
		return catesub;
	}
	
	public List<bean_rent_products> getSearchitems(String keyword) {
		List<bean_rent_products> resultkeyword = sqlSession.selectList("mainSQL.getsearchitems",keyword);
		return resultkeyword;
	}

}
