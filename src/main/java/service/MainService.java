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


	public List<Bean_Category> getCategory() {
		List<Bean_Category> cateMain = sqlSession.selectList("mainSQL.maincate");
		return cateMain;
	}
}

