package service;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.bean_rent_products;

@Service
public class ItemService {

   @Autowired
   private SqlSession sqlSession;

   public int ItemInsert(bean_rent_products rentBean) {
	      int result = sqlSession.insert("itemSQL.itemInsert", rentBean);
	      return result;
	      }
   
   public int ItemUpdate(bean_rent_products rentBean) {
	      int result = sqlSession.insert("itemSQL.itemUpdate", rentBean);
	      return result;
	      }
   
   public int ItemDelete(int num) {
	      return sqlSession.delete("itemSQL.itemDelete", num);
	   }
   

}

   
   