package com.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;



import com.po.Product;
import com.po.User;

public class BaseDao {
	@Resource(name="mySessionFactory")
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	public boolean save(Object oj){
		try {
			getSession().save(oj);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public boolean saveOrUpdate(Object oj){
		try {
			getSession().saveOrUpdate(oj);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public boolean update(Object oj){
		try {
			getSession().update(oj);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public boolean del(Object oj){
		try {
			System.out.println("del------------");
			getSession().delete(oj);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public boolean openSession(){
		try {
			getSession().beginTransaction();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public List getObjects(int startStaus, int maxResults, String table) {
		// TODO Auto-generated method stub
		return getSession().createQuery("from " + table).setFirstResult(startStaus).list();
	}
	
	public List getObjects(String table) {
		// TODO Auto-generated method stub
		return getSession().createQuery("from " + table).list();
	}
	
	
	public Object getObject(String table, long id){
		switch (table) {
		case "User":
			return getSession().get(User.class, id);
		case "Product":
			return getSession().get(Product.class, (int)id);
		
		default:
			return null;
		}
	}
	public boolean delById(String table, long id){
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
