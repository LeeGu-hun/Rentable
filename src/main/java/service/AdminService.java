package service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.AdminCommand;
import bean.Bean_Category;
import bean.DelayCommand;
import bean.bean_rent_products;
import bean.bean_rent_users;

@Service
public class AdminService {

	@Autowired
	private SqlSession sqlSession;

	public List<bean_rent_users> getUserList() {
		List<bean_rent_users> userlist = sqlSession.selectList("adminSQL.getUserlists");
		return userlist;
	}

	public List<bean_rent_users> getInvaildList() {
		List<bean_rent_users> userlist = sqlSession.selectList("adminSQL.getInvaildlist");
		for (int i = 0; i < userlist.size(); i++) {
			String str = userlist.get(i).getROI_buyidnum();
			int block_num = Integer.parseInt(str);
			sqlSession.update("adminSQL.updateR_stat", block_num);
		}
		return userlist;
	}

	public void update_userstat(DelayCommand delay) {
		int update1 = sqlSession.update("adminSQL.invalid_price1", delay);
		if (update1 == 1) {
			sqlSession.update("adminSQL.invalid_price2", delay);
		} else {
			System.out.println("실패");
		}
	}

	public void update_userstat1(bean_rent_users users) {
		sqlSession.update("adminSQL.updateUser_stat", users);

	}

	public AdminCommand getCount() {
		AdminCommand result = null;
		result = sqlSession.selectOne("adminSQL.countProducts");
		return result;
	}

	public List<bean_rent_products> guaranteeLists() {
		List<bean_rent_products> results = null;
		results = sqlSession.selectList("adminSQL.guaranteelist");
		return results;
	}

}
