package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.bean_rent_products;
import bean.bean_rent_review;
import bean.bean_rent_users;

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
   
   public int ReviewInsert(bean_rent_review reviewBean) {
	      int result = sqlSession.insert("itemSQL.reviewInsert", reviewBean);
	      return result;
	      }
   
	public List<bean_rent_review> Reviewlist(bean_rent_products rentBean) {
		List<bean_rent_review> result = sqlSession.selectList("itemSQL.reviewList",rentBean);
		return result;
	}
   
   
   

}

   
   