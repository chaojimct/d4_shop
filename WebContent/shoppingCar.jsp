
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>new</title>
<link rel="stylesheet" href="js/style.css">
<style type="text/css">
#table td{width: 160px}
#table tr{height: 50px}
</style>
<%
	int i = 0;
%>
<script type="text/javascript">
	var tpp=0;
	var oldNum = 0;
	function getPNum(pnu){
		oldNum = pnu;
	}
	function tPrice(pnu,pp,tp){
//		alert(pnu+"  "+pp+"  "+tp);
		document.getElementById(tp).innerHTML=(pnu*pp);
		tpp = tpp + (pnu - oldNum) * pp;
		document.getElementById("tpp").innerHTML=tpp;
	}

/*	function numD(){
		int x = document.form.pn.value;
		document.form.pn.value = x - 1;
	}*/
	function numU(pn){
		
		document.form.pn.value = pn+1;
	}
</script>
</head>
<body>
<jsp:include page="webTop.jsp"></jsp:include>
<center>
<div style="height: 500px">
<form action="/2ks/bcar/update.do"name = "form">
<table id="table" border="0">
	<tr>
		<td>商品名</td>
		<td>编号</td>
		<td>单价</td>
		<td>数量</td>
		<td>共计</td>
	</tr>
	<c:forEach items="${clist }" var="product" varStatus="s">
		<tr>
			<td>${product.product.pname }</td>
			<td>${product.sid }<input type="hidden" value = "${product.sid }" name = "pno<%=i %>"></td>
			<td>${product.price }<input type="hidden" value = "${product.price }" name = "pp<%=i %>"></td>
			<td>
				<!-- <a href = "#" onclick="numD()">-</a>  <a href = "#" onclick="numU(document.form.pn<%=i %>.value)">+</a>-->
				<input type="text" value = "${product.num }" name="pn<%=i %>" style="width: 20px" onfocus="getPNum(document.form.pn<%=i %>.value)" onchange="tPrice(document.form.pn<%=i %>.value,${product.price },'tp<%=i %>')"/>
				
				
			</td>
			<td>
				<div id = "tp<%=i %>">
  					<script type="text/javascript">
					var tp<%=i %> = document.form.pn<%=i %>.value*document.form.pp<%=i %>.value;
					tpp = tpp + tp<%=i %>;
					
					document.getElementById("tp<%=i%>").innerHTML=tp<%=i %>;
					</script></div></td>
			<td style="width: 50px"><a href="/2ks/bcar/del.do?no=${product.sid }" onclick="">删除</a></td>
			
			<% i++; %>
		</tr>
	</c:forEach>
	<tr>
		<td>总价：</td>
		<td></td>
		<td></td>
		<td></td>
		<td>
			<p id = "tpp"><script type="text/javascript">document.getElementById("tpp").innerHTML=tpp;</script></p>
		</td>
		<td>
			<input type="submit" value="点击确认订单数据" onclick="showBuy()">
			<div style="" id="div1"><a href="count.jsp">结算</a></div>
		</td>
	</tr>
</table>
</form>
</div>
</center>
<jsp:include page="webBottom.jsp"></jsp:include>
</body>
</html>