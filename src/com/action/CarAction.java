package com.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.dao.ProductDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.po.Car;
import com.po.Detail;
import com.po.Product;
import com.tool.Print;
import com.tool.Tools;

@Controller("carAction")
public class CarAction extends ActionSupport implements ModelDriven<Car>{
	
	private Car Car;

	@Resource(name = "productDao")
	private ProductDao ProductService;
	


	public ProductDao getProductService() {
		return ProductService;
	}
	public void setProductService(ProductDao productService) {
		ProductService = productService;
	}
	

	private Map<String, Object> session;
	private Map<String, Object> request;
	private String rePwd;
	private int startStaus = 0;
	private int maxResults = 5;
	private int id;
	
	public String add(){
		session = ActionContext.getContext().getSession();
		
		List<Car> Cars = (List<com.po.Car>) session.get("clist");
		
		if(Cars == null){
			Cars = new ArrayList<Car>();
		}
		System.out.println(id+",,,,,,,,"+Car.getId());
		Product p = (Product) ProductService.getObject("Product", (long)Car.getId());
		
		Cars.add(new Car(Tools.getNow(), 1, p.getPprice(), p));
		
		session.put("clist", Cars);
		
		Print.out("success");
			
		return "add_car_su";
	}
	
	public String getDetail(){
		session = ActionContext.getContext().getSession();
		
		List<Detail> Cars = ProductService.getObjects("Detail");
		
		session.put("dlist", Cars);

			
		return "to_detail";
	}

	public String del(){
		System.out.println("del---------action");
		session = ActionContext.getContext().getSession();
		
		List<Car> cl = (List<com.po.Car>) session.get("clist");
		
		for (Car c : cl) {
			if(c.getId() == id){
				cl.remove(c);
				break;
			}
		}
		
		session.put("clist", cl);
		
		Print.out("success");
		
		return NONE;
	}
	
	public String count(){
		System.out.println("del---------action");
		session = ActionContext.getContext().getSession();
		
		List<Car> cl = (List<com.po.Car>) session.get("clist");
		
		for (Car c : cl) {
			ProductService.save(new Detail(c.getProduct().getPname(), c.getPrice(), 1, c.getNum()));
		}
		
		session.put("clist", null);
		
		Print.out("success");
		
		return NONE;
	}
	
	public Car getCar() {
		return Car;
	}
	public void setCar(Car Car) {
		this.Car = Car;
	}
	
	@Override
	public Car getModel() {
		if(Car == null){
			Car= new Car();
		}	
		return Car;
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





	public String getRePwd() {
		return rePwd;
	}


	public void setRePwd(String rePwd) {
		this.rePwd = rePwd;
	}

	
	
}
