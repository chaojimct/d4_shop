package com.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;





import com.dao.ProductDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.po.Product;
import com.po.User;
import com.service.UserService;
import com.tool.Print;
import com.tool.Tools;
@Controller("userAction")
public class UserAction extends ActionSupport implements ModelDriven<User>{
	
	private User user;
	@Resource(name = "userService")
	private UserService userService;

	@Resource(name = "productDao")
	private ProductDao proDao;
	
	private Map<String, Object> session;
	private Map<String, Object> request;
	private String rePwd;
	private int startStaus = 0;
	private int maxResults = 5;
	private int id;
	
	private int empId;
	
	public String getUsers(){
		
		request = (Map<String, Object>) ActionContext.getContext().get("request");

		List<User> users = userService.getUsers(0, maxResults);
		
		System.out.println(users.size());
		
		request.put("users", users);
		
		
		
		return "user_edit";
	}
	
	
	public String reg(){
		if(userService.saveUser(user, empId)){
			Print.out("success");
		}else{
			Print.out("error");
		}
			
		return NONE;
	}
	public String alter(){
		System.out.println(user.getEmail());
		if(userService.update(user)){
			Print.out("success");
		}else{
			Print.out("error");
		}
			
		return NONE;
	}
	public String changePwd(){
		if(!user.getPwd().equals(rePwd)){
			Print.out("wrongPwd");
			return NONE;
		}
		session = ActionContext.getContext().getSession();
		User u = (User) session.get("user");
		u.setPwd(Tools.getMD5(user.getPwd()));
		session.put("user", u);
		if(userService.updateUser(u)){
			Print.out("success");
		}else{
			Print.out("error");
		}
			
		return NONE;
	}
	public String confirmPwd(){
		if(!user.getPwd().equals(rePwd)){
			Print.out("wrongPwd");
			return NONE;
		}
		session = ActionContext.getContext().getSession();
		User u = (User) session.get("user");
		
		if(u.getPwd().equals(Tools.getMD5(user.getPwd()))){
			Print.out("success");
		}else{
			Print.out("wrongPwd");
		}
		return NONE;
	}

	public String login() throws IOException{
		session = ActionContext.getContext().getSession();
		
		System.out.println(user.getName()+"-----uu-------uu-------"+user.getPwd());
		
		User u = userService.login(user.getName(),user.getPwd());
		
		List<Product> plist = proDao.getObjects("Product");
		
		session.put("plist", plist);
		if(u == null){
			Print.out("error");
			return NONE;
		}else{
			Print.out("success");
		}
		
		session.put("user", u);
		
		
		return NONE;
	}
	public String logout(){
		session = ActionContext.getContext().getSession();
		session.put("user", null);
		return "login.jsp";
	}
	public String del(){
		System.out.println("del---------action");
		userService.del(maxResults);
		return getUsers();
	}
	
	
	
//	public String refreshUser(){
//		session = ActionContext.getContext().getSession();
//		User u = (User) session.get("user");
//		u = userService.getUserById(u.getId());
//		session.put("user", u);
//		return "refreshUser";
//	}
//	public String updateUser(){
//		session = ActionContext.getContext().getSession();
//		request = (Map<String, Object>) ActionContext.getContext().get("request");
//		User u = (User) session.get("user");
//		long id = u.getId();
//		if(user.getId() == id){
//			request.put("isMy", 1);
//			u = userService.getUserById(user.getId());
//			u.setEmail(user.getEmail());
//			u.setAge(user.getAge());
//			
//			u.setSex(user.getSex());
//			u.setAge(user.getAge());
//			userService.updateUser(u);
//			session.put("user", u);
//		}else{
//			u = userService.getUserById(id);
//			request.put("isMy", 0);
//		}
//		request.put("userToShow", u);
//		
//		
//		return "toUserCenter";
//	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@Override
	public User getModel() {
		System.out.println("modeldriven-----------------------");
		//System.out.println(user.getUserName());
		if(user == null){
			user= new User();
		}
		System.out.println("modeldriven-------------2---");
		return user;
	}


	


	public int getStartStaus() {
		return startStaus;
	}


	public void setStartStaus(int startStaus) {
		this.startStaus = startStaus;
	}


	public int getMaxResults() {
		return maxResults;
	}


	public void setMaxResults(int maxResults) {
		this.maxResults = maxResults;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getEmpId() {
		return empId;
	}


	public void setEmpId(int empId) {
		this.empId = empId;
	}


	public String getRePwd() {
		return rePwd;
	}


	public void setRePwd(String rePwd) {
		this.rePwd = rePwd;
	}

	
	
}
