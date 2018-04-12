package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.bean_rent_products;

@Service
public class UserItemService {
	
		
	@Autowired
	private SqlSession sqlSession;

	public List<bean_rent_products> Myitemlist() {
		List<bean_rent_products> result = sqlSession.selectList("useritemlistSQL.myList");
		return result;
	}

	
	

}
