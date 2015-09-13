<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<script language="javascript">
	function checkEmpty() {
		if(document.userForm.name.value == ""){
			window.alert("用户名不能为空");
			return false;
		}
		if(document.userForm.user_name.value == ""){
			window.alert("昵称不能为空");
			return false;
		}
		if (document.userForm.pwd.value != document.userForm.passwordOne.value) {
			window.alert("您两次输入的密码不一致，请重新输入");
			return false;
		}
		if (isNaN(document.userForm.age.value)) {
			window.alert("年龄只能为数字");
			return false;
		}
		
	}
</script>
<link rel="stylesheet" href="js/style.css">
</head>
<body>
	<jsp:include page="webTop.jsp"></jsp:include>
	<table width="1024px" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
	  <tr>
	    <td bgcolor="#F5F5F5" align="center">
		<img src="image/fg1.jpg" width="1024" height="39">
	<form name="userForm" action="User_reg" onsubmit="return checkEmpty()">
		<table width="270"  border="0" cellspacing="0" cellpadding="0">
	      <tr>
	        <td width="107" height="35">
	          <div align="right">帐户名：</div>
	        </td>
	        <td width="163">
	            <div align="left">
	             <input type="text" name="name">
	          </div>
	        </td>
	      </tr>
	     
	      <tr>
	        <td height="35">          
	          <div align="right">用户密码：</div></td>
	        <td>
	            <div align="left">
	              <input type="password" name="pwd">
	          </div></td></tr>
	      <tr>
	        <td height="35">
	          <div align="right">密码确认：</div></td>
	        <td>
	            <div align="left">
	              <input type="password" name="passwordOne"/>
	          </div></td></tr>
	      
	      <tr>
	        <td height="35">
	          <div align="right">年龄：</div></td>
	        <td>
	            <div align="left">
	              <input type="text" name="age"/>             
	          </div></td></tr>
	      <tr>
	        <td height="35">
	          <div align="right">性别：</div></td>
	        <td>
	            <div align="left">
	            	<input type="radio" value="1" name="sex" checked>男
					<input type="radio" value="0" name="sex">女<br>
	          </div></td></tr>
	      <tr>
	        
	    </table>
	    <br>
		<input type="image" class="input1"  src="image/save.jpg" width="51" height="20">
		&nbsp;&nbsp;
		<a href="#" onClick="javascript:userForm.reset()"><img src="image/clear.gif"></a>
		&nbsp;&nbsp;
		<a href="#" onClick="javascript:history.go(-1)"><img src="image/back.gif"></a>
	</form>
	  <p>&nbsp;  </p>    </td>
	  </tr>
	</table>
	<jsp:include page="webBottom.jsp"></jsp:include>
</body>
</html>