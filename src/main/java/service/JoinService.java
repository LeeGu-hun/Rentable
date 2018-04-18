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
	public int userModify(bean_rent_users rentBean) {
		int result = sqlSession.update("memberSQL.userModify", rentBean);
		return result;
	}
	public int userDelete(bean_rent_users rentBean) {
		int result = sqlSession.update("memberSQL.user_delete", rentBean);
		return result;
	}
	public int checkSignup(String R_id) {
		int result = sqlSession.selectOne("memberSQL.checkSignup",R_id);
		return result;
	}

}
