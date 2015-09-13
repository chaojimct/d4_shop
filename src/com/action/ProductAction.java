package com.action;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import com.dao.ProductDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.po.Product;
import com.tool.Print;

@Controller("productAction")
public class ProductAction extends ActionSupport implements ModelDriven<Product>{
	
	private Product Product;
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
	
	private int empId;
	
	public String getProducts(){
		
		request = (Map<String, Object>) ActionContext.getContext().get("request");

		List<Product> Products = ProductService.getObjects("Product");
		
		System.out.println(Products.size());
		
		request.put("Products", Products);
		
		
		
		return "Product_edit";
	}
	
	
	public String add(){
		if(ProductService.save(Product)){
			Print.out("success");
		}else{
			Print.out("error");
		}
			
		return NONE;
	}
//	public String alter(){
//		System.out.println(Product.getEmail());
//		if(ProductService.update(Product)){
//			Print.out("success");
//		}else{
//			Print.out("error");
//		}
//			
//		return NONE;
//	}


	public String del(){
		System.out.println("del---------action");
		ProductService.del(ProductService.getObject("Product", id));
		return getProducts();
	}
	
	
	
//	public String refreshProduct(){
//		session = ActionContext.getContext().getSession();
//		Product u = (Product) session.get("Product");
//		u = ProductService.getProductById(u.getId());
//		session.put("Product", u);
//		return "refreshProduct";
//	}
//	public String updateProduct(){
//		session = ActionContext.getContext().getSession();
//		request = (Map<String, Object>) ActionContext.getContext().get("request");
//		Product u = (Product) session.get("Product");
//		long id = u.getId();
//		if(Product.getId() == id){
//			request.put("isMy", 1);
//			u = ProductService.getProductById(Product.getId());
//			u.setEmail(Product.getEmail());
//			u.setAge(Product.getAge());
//			
//			u.setSex(Product.getSex());
//			u.setAge(Product.getAge());
//			ProductService.updateProduct(u);
//			session.put("Product", u);
//		}else{
//			u = ProductService.getProductById(id);
//			request.put("isMy", 0);
//		}
//		request.put("ProductToShow", u);
//		
//		
//		return "toProductCenter";
//	}
	public Product getProduct() {
		return Product;
	}
	public void setProduct(Product Product) {
		this.Product = Product;
	}
	
	@Override
	public Product getModel() {
		System.out.println("modeldriven-----------------------");
		//System.out.println(Product.getProductName());
		if(Product == null){
			Product= new Product();
		}
		System.out.println("modeldriven-------------2---");
		return Product;
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
