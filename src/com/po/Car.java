package com.po;

public class Car {
	private int id;
	private String sid;
	private int num;
	private float price;
	private Product product;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Car(int num, float price, Product product) {
		super();
		this.num = num;
		this.price = price;
		this.product = product;
	}
	
	
	
	public Car(String sid, int num, float price, Product product) {
		super();
		this.sid = sid;
		this.num = num;
		this.price = price;
		this.product = product;
	}
	public Car() {
		super();
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	
	
}
