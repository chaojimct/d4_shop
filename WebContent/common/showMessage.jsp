<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
       <script type="text/javascript">
       
           <s:if test="#request.message!=null">
           	alert("<s:property value='#request.message'/>");
           </s:if>
           /* document.history.go(-2); */
           document.location.href="<%=path%>/index.jsp"; 
           
           <s:if test="path!=null">
              
           </s:if>
       </script>
  </head>
  
  <body>
       
  </body>
</html>
