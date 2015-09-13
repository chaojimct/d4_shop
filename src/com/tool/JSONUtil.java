package com.tool;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;



public class JSONUtil {

	

	public static void SendSuccess() {
		try {
			HttpServletResponse response = ServletActionContext.getResponse();

			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			System.out.println();
			out.print("success");

			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	public static void SendError() {

		try {
			HttpServletResponse response = ServletActionContext.getResponse();

			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			System.out.println();
			out.print("error");

			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static void SendFail() {

		try {
			HttpServletResponse response = ServletActionContext.getResponse();

			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			System.out.println();
			out.print("fail"); 

			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
