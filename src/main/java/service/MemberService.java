package service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.bean_rent_users;
import spring.IdPasswordNotMatchingException;
import spring.MemberNotFoundException;

@Service
public class MemberService {

	@Autowired
	private SqlSession sqlSession;

	public bean_rent_users loginMember(String userinfo) {
		bean_rent_users result = sqlSession.selectOne("memberSQL.loginCheck", userinfo);
		return result;
	}

}
