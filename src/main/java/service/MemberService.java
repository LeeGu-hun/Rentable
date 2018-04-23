package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.DelayCommand;
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
	
	public List<DelayCommand> checkBlockUser(int R_idnum) {
		List<DelayCommand> result = sqlSession.selectList("memberSQL.delayCheck",R_idnum);
		return result;
	}

}
