package com.po;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.OneToOne;
import javax.persistence.Table;


//Ô±¹¤
@Entity
@Table(name="t_user")
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 7657346385486847257L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id = 0;
	@Column(unique = true)
	private String name;
	@Column
	private String pwd;
	@Column
	private String email;
	@Column
	private int age;
	@Column
	private String sex;
	@Column
	private Date createDate;
	@Column
	private String createDatetime;
	
	
	private int tasks;
//	@ManyToMany
//	@JoinTable(name="user_authority",joinColumns={@JoinColumn(name="u_id")},inverseJoinColumns={@JoinColumn(name="a_id")})
//	private Set<Authority> authorities;
	


	public String getCreateDatetime() {
		return createDatetime;
	}
	public void setCreateDatetime(String createDatetime) {
		this.createDatetime = createDatetime;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", pwd=" + pwd
				+ ", email=" + email + ", age=" + age + ", sex=" + sex
				+ ", createDate=" + createDate + ", createDatetime="
				+ createDatetime + "]";
	}
	public int getTasks() {
		return tasks;
	}
	public void setTasks(int tasks) {
		this.tasks = tasks;
	}
	
	
}
