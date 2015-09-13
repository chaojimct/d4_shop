<%@page import="com.po.Product"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">

<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>    
<title>new</title>
<%

	List<Product> list = (List<Product>)session.getAttribute("plist");

	
	int j = 0;
%>
<link rel="stylesheet" href="js/style.css">
<style type="text/css">
* {
	margin:0;
	padding:0;
}
#title{
	display:block;
	width: 100px;
	height: 50px;
	background: url("image/button.jpg") no-repeat;
	margin: 8px;
	padding-top:10px;
	text-align: center;
}
#title a{
	font-size: 17px;
	text-align: center;	
}
td{
	width: 101px;
}
</style>
<script type="text/javascript">


</script>
</head>
<body>
<jsp:include page="webTop.jsp"></jsp:include>
<center>
	<div style="height: 70px;padding: 50px">
		<form action="/2ks/product/query.do" method="post">
		<table>
		<tr>
		<td><span id="title"><a href="getProduct.jsp?no=0">全部</a></span></td>
		<td><span id="title"><a href="getProduct.jsp?no=1000000">家用电器</a></span></td>
		<td><span id="title"><a href="getProduct.jsp?no=2000000">手机数码</a></span></td>
		<td><span id="title"><a href="getProduct.jsp?no=3000000">电脑办公</a></span></td>
		<td><span id="title"><a href="getProduct.jsp?no=4000000">服饰鞋帽</a></span></td>
		<td><span id="title"><a href="getProduct.jsp?no=5000000">食品饮料</a></span></td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <select name="searchway">
		  	<option value = "0">全部</option>
		  	<option value = "1000000">家用电器</option>
		  	<option value = "2000000">手机数码</option>
		  	<option value = "3000000">电脑办公</option>
		  	<option value = "4000000">服饰鞋帽</option>
		  	<option value = "5000000">食品饮料</option>
		  </select>
		 </td>
		<td><input type="text" name = "keystr"></td>
		<td><input type="submit" value="搜索"></td>
			</tr></table></form></div>
	<div>
	<table border="0">
	<%while(j<1){ %>
	<tr>
		<%for(int i = 0; i<4; i++){
			if(j >= list.size()){
				break;
			}
		%>
		<td><div style="height: 350px;width: 250px">
				<div style="height: 220px">
					<a href="productInfo.jsp?no=<%=list.get(j).getId() %>">
						<img alt="" src="<%=list.get(j).getImg()%>"></a></div><br>
					<a href="productInfo.jsp?no=<%=list.get(j).getId() %>"><%=list.get(j).getPname() %></a>
					<br><br>
				<font color="red">￥<%=list.get(j).getPprice() %></font><br>
				<span>
					<a href="Car_add?id=<%=list.get(j).getId() %>"><img src="image/intocar.png"></a>
					<a href="#"><img src="image/buy.png"></a></span>
			</div>
		</td>
		<%j++;} %>
	</tr>
	<%} %>
	</table>
	</div>
</center>
<jsp:include page="webBottom.jsp"></jsp:include>
</body>
</html>