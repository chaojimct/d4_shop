package com.tool;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Tools {
	private static final char[] hex="abcdef0123456789".toCharArray();
	public static String getMD5(String pwd) {
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("md5");
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		md.update(pwd.getBytes());
		
		byte[] b = md.digest();
		
		char[] rc = new char[b.length*2];
		
		int k = 0;
		
		for(int i=0;i<b.length;i++){
			rc[k++] = hex[b[i]>>>4&0xf];
			rc[k++] = hex[b[i]&0xf];
		}
		return new String(rc);	
	}
	
	public static String getDate(){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(date);
	}
	public static String getNow(){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		return sdf.format(date);
	}
	public static java.sql.Date getSqlDate(String bdate) throws ParseException {
		String[] s = bdate.split("/");
		for (String ss : s) {
			System.out.println(ss);
		}
		String sd = s[2] + "-" + s[0] + "-" + s[1];
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date d = sdf.parse(sd);
		return new java.sql.Date(d.getTime());
	}
	public static java.sql.Date getSqlDate() throws ParseException {
		Date date = new Date();
		
		return new java.sql.Date(date.getTime());
	}
	public static void main(String[] args) throws ParseException {
		System.out.println(getMD5("1111"));
	}
}

