package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.po.User;

@Component("userDao")
public class UserDao extends BaseDao{

	public boolean save(User user) {
		try {
			getSession().save(user);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public User getUserByName(String userName) {
		System.out.println("dao"+userName);
		User u = (User) getSession().createQuery("from User where name = ?").setParameter(0, userName).uniqueResult();
		System.out.println("dao`"+userName);
		return u;
	}

	public boolean update(User user) {
		try {
			
		} catch (Exception e) {
			return false;
		}
		getSession().update(user);
		return true;
	}

	public User getUserById(long l) {
		// TODO Auto-generated method stub
		return (User) getSession().get(User.class, l);
	}

	public List<User> getUsersByName(String content) {
		List<User> u = getSession().createQuery("from User where userName like ?").setParameter(0, "%"+content+"%").list();
		return u;
	}

	public List<User> getUsers(int startStaus, int maxResults) {
		// TODO Auto-generated method stub
		return getSession().createQuery("from User order by createDatetime").setFirstResult(startStaus).list();
	}

}
