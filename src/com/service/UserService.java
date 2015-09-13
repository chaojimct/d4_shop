package com.service;


import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.UserDao;

import com.po.User;
import com.tool.Tools;

@Service("userService")
public class UserService {
	@Resource(name = "userDao")
	private UserDao userDao;
	
	public boolean saveUser(User user, int empId) {
		
		
		System.out.println(empId+"--------------------------");
		
		user.setPwd(Tools.getMD5(user.getPwd()));
		
		user.setCreateDate(new java.sql.Date(new Date().getTime()));
		user.setCreateDatetime(Tools.getDate());
		
		return userDao.save(user);
	}
	public boolean update(User user) {
		User u = (User) userDao.getObject("User", user.getId());
		u.setPwd(Tools.getMD5(user.getPwd()));
//		u.setAge(user.getAge());
//		u.setEmail(user.getEmail());
//		u.setSex(user.getSex());
//		u.setName(user.getName());
		
		System.out.println(user.toString());
		return userDao.update(u);
	}
	public User login(String userName, String userPwd) {
		User u = userDao.getUserByName(userName);
		System.out.println(u.getName());
		if(u == null){
			return null;
		}
		System.out.println(u.toString());
		userPwd = Tools.getMD5(userPwd);
		System.out.println(userPwd);
		if(userPwd.equals(u.getPwd()))
			return u;
		return null;
	}
	public boolean updateUser(User user){
		User u = (User) userDao.getObject("User", user.getId());
		
		u.setPwd(user.getPwd());
		return userDao.update(u);
	}

	public User getUserById(long l) {
		
		return userDao.getUserById(l);
	}

	public List<User> getUsers(int startStaus, int maxResults) {
		// TODO Auto-generated method stub
		if(startStaus > 1){
			startStaus = (startStaus - 1) * maxResults;
		}
		return userDao.getUsers(startStaus, maxResults);
	}

	public boolean del(long id) {
		System.out.println("delser---------0000000");
		User user = (User) userDao.getObject("User", id);
		System.out.println("delser-------------------");
		userDao.del(user);
		System.out.println("delser-------------------111");
		return true;
		
	}
	public boolean changePwd(User user) {
		// TODO Auto-generated method stub
		return userDao.saveOrUpdate(user);
	}
	



}
