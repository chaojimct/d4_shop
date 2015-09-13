package com.tool;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

public class Print {
	public static void out(String s){
		try {
			HttpServletResponse response = ServletActionContext.getResponse();

			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.print(s);

			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
