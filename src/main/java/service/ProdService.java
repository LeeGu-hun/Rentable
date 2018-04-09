package service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.bean_rent_products;

@Service
public class ProdService {

   @Autowired
   private SqlSession sqlSession;

   public bean_rent_products prodView(int num) {
	   bean_rent_products prod = sqlSession.selectOne("prodSQL.prodView", num);
		return prod;
	}
}
   