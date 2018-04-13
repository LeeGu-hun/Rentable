package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.Bean_Category;
import bean.bean_rent_users;

@Service
public class AdminService {

	@Autowired
	private SqlSession sqlSession;

	public List<bean_rent_users> getUserList() {
		List<bean_rent_users> userlist = sqlSession.selectList("adminSQL.getUserlists");
		return userlist;
	}

}
