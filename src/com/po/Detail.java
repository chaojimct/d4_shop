package com.po;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSeeAlso;

/**
 * SkshopProducts entity. @author MyEclipse Persistence Tools
 */


@Entity
@Table(name="t_detail")
public class Detail implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@Column
	private String name;
	
	@Column
	private Float price;
	@Column
	private Integer state;
	@Column
	private Integer pnum;
	
	@Column
	private Timestamp addtime;
	



	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public Integer getPnum() {
		return this.pnum;
	}

	public void setPnum(Integer pnum) {
		this.pnum = pnum;
	}

	

	public Timestamp getAddtime() {
		return this.addtime;
	}

	public void setAddtime(Timestamp addtime) {
		this.addtime = addtime;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Detail(String name, Float price, Integer state, Integer pnum) {
		super();
		this.name = name;
		this.price = price;
		this.state = state;
		this.pnum = pnum;
	}
	
	

}