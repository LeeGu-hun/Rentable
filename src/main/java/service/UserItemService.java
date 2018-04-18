package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.bean_like_items;
import bean.bean_rent_order_items;
import bean.bean_rent_products;
import bean.bean_rent_users;

@Service
public class UserItemService {
	
		
	@Autowired
	private SqlSession sqlSession;

	public List<bean_rent_products> Myitemlist(bean_rent_users bean) {
		List<bean_rent_products> result = sqlSession.selectList("useritemlistSQL.myList",bean);
		return result;
	}
	
	   public int LikeInsert(bean_like_items like) {
		      int result = sqlSession.insert("useritemlistSQL.likeInsert", like);
		      return result;
		      }
		public List<bean_like_items> Likelist(bean_rent_users bean) {
			List<bean_like_items> result = sqlSession.selectList("useritemlistSQL.likeList",bean);
			return result;
		}
		
		   public int LikeDelete(int num) {
			      return sqlSession.delete("useritemlistSQL.likeDelete", num);
			   }
		   
		   public int StatUpdate(bean_rent_order_items rentBean) {
			      int result = sqlSession.update("useritemlistSQL.statUpdate", rentBean);
			      return result;
			      }
	
	

}
