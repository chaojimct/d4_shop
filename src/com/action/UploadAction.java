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
	 // myFileContentType属性用来封装上传文件的类型  
    private String myfileContentType;  
  // myFileFileName属性用来封装上传文件的文件名  
    private String myfileFileName;  
	public String execute() throws IOException{
		
		
        System.out.println("上传文件名:" + myfileFileName);  
        System.out.println("上传文件类型:" + myfileContentType);  
		
		//基于myFile创建一个文件输入流  
        InputStream is = new FileInputStream(myfile);  
          
        // 设置上传文件目录  
        String myfilePath = ServletActionContext.getServletContext().getRealPath("/upload");  
        System.out.println("上传路径：" + myfilePath);
        System.out.println("上传文件名:" + myfileFileName);  
        System.out.println("上传文件类型:" + myfileContentType); 
        
        myfileFileName = new Date().getTime() + myfileFileName;
        // 设置目标文件  
        File toFile = new File(myfilePath, myfileFileName);  
          
        // 创建一个输出流  
        OutputStream os = new FileOutputStream(toFile);  
  
        //设置缓存  
        byte[] buffer = new byte[1024];  
  
        int length = 0;  
  
        //读取myFile文件输出到toFile文件中  
        while ((length = is.read(buffer)) > 0) {  
            os.write(buffer, 0, length);  
        }  
        
        
        //关闭输入流  
        is.close();  
          
        //关闭输出流  
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
