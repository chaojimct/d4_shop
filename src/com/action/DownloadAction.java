package com.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.net.URLEncoder;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class DownloadAction extends ActionSupport{
	private String fname;
	public String getFname() {
		return fname;
	}
	@Override
	public String execute() throws Exception {
		
//		String s = new String(fname.getBytes("utf-8"));
//		fname = new String(fname.getBytes("utf-8"));
////		fname = URLEncoder.encode(fname, "utf-8");
//		System.out.println("s-----------"+s);
		System.out.println("fname-----------"+fname);
		return super.execute();
	}
	public InputStream getInputStream() throws FileNotFoundException{
		String path = ServletActionContext.getServletContext().getRealPath("upload");
		FileInputStream fos = new FileInputStream(new File(path+"\\"+fname));
		return fos;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	
}
