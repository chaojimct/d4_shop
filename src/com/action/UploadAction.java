package com.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.util.ServletContextAware;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.tool.Print;
import com.tool.Tools;
@Controller("myfileAction")
public class UploadAction extends ActionSupport implements ServletContextAware{

	
	private ServletContext s;
	private File myfile;
	 // myFileContentType����������װ�ϴ��ļ�������  
    private String myfileContentType;  
  // myFileFileName����������װ�ϴ��ļ����ļ���  
    private String myfileFileName;  
	public String execute() throws IOException{
		
		
        System.out.println("�ϴ��ļ���:" + myfileFileName);  
        System.out.println("�ϴ��ļ�����:" + myfileContentType);  
		
		//����myFile����һ���ļ�������  
        InputStream is = new FileInputStream(myfile);  
          
        // �����ϴ��ļ�Ŀ¼  
        String myfilePath = ServletActionContext.getServletContext().getRealPath("/upload");  
        System.out.println("�ϴ�·����" + myfilePath);
        System.out.println("�ϴ��ļ���:" + myfileFileName);  
        System.out.println("�ϴ��ļ�����:" + myfileContentType); 
        
        myfileFileName = new Date().getTime() + myfileFileName;
        // ����Ŀ���ļ�  
        File toFile = new File(myfilePath, myfileFileName);  
          
        // ����һ�������  
        OutputStream os = new FileOutputStream(toFile);  
  
        //���û���  
        byte[] buffer = new byte[1024];  
  
        int length = 0;  
  
        //��ȡmyFile�ļ������toFile�ļ���  
        while ((length = is.read(buffer)) > 0) {  
            os.write(buffer, 0, length);  
        }  
        
        
        //�ر�������  
        is.close();  
          
        //�ر������  
        os.close();  
		
		
		Print.out("success");
		return NONE;
	}
	

	public ServletContext getS() {
		return s;
	}
	public void setS(ServletContext s) {
		this.s = s;
	}
	@Override
	public void setServletContext(ServletContext arg0) {
		// TODO Auto-generated method stub
		this.s = arg0;
	}


	public File getMyfile() {
		return myfile;
	}


	public void setMyfile(File myfile) {
		this.myfile = myfile;
	}


	public String getMyfileContentType() {
		return myfileContentType;
	}


	public void setMyfileContentType(String myfileContentType) {
		this.myfileContentType = myfileContentType;
	}


	public String getMyfileFileName() {
		return myfileFileName;
	}


	public void setMyfileFileName(String myfileFileName) {
		this.myfileFileName = myfileFileName;
	}
	
	
	

}
