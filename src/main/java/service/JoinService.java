package service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.bean_rent_users;

@Service
public class JoinService {

   @Autowired
   private SqlSession sqlSession;

   public int JoinUser(bean_rent_users rentBean) {
         int result = sqlSession.insert("memberSQL.joinUser", rentBean);
         return result;
         }
}
   