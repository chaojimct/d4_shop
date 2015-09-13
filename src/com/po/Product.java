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
@Table(name="t_product")
public class Product implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@Column
	private String pname;
	@Column
	private String pcontent;
	@Column
	private Float pprice;
	@Column
	private Integer pstate;
	@Column
	private Integer pnum;
	@Column
	private String img;
	@Column
	private Timestamp addtime;
	

	// Constructors

	/** default constructor */
	

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPcontent() {
		return this.pcontent;
	}

	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}

	public Float getPprice() {
		return this.pprice;
	}

	public void setPprice(Float pprice) {
		this.pprice = pprice;
	}

	public Integer getPstate() {
		return this.pstate;
	}

	public void setPstate(Integer pstate) {
		this.pstate = pstate;
	}

	public Integer getPnum() {
		return this.pnum;
	}

	public void setPnum(Integer pnum) {
		this.pnum = pnum;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Timestamp getAddtime() {
		return this.addtime;
	}

	public void setAddtime(Timestamp addtime) {
		this.addtime = addtime;
	}


}