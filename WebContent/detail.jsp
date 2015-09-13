<%@page import="com.ks.service.DetailService"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.ks.domain.User"%>
<%@page import="com.ks.dao.DetailDao"%>
<%@page import="com.ks.domain.Detail"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	DetailService ds = new DetailService();
	User user = (User)session.getAttribute("user");
	if(user != null){
		List<Detail> details = ds.getDetails(user.getUserNO());
		pageContext.setAttribute("details", details);
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>new</title>
<link rel="stylesheet" href="js/style.css">
<style type="text/css">
	table tr td{width: 120px}
	#top{height: 40px;width: 1024px}
</style>

</head>
<body>
	<c:if test="${empty user }">
		<script type="text/javascript">alert('请先登录，然后在进行购买！');window.location.href='login.jsp';</script>
		
	</c:if>
	<c:if test="${user.userGrade ==1 }">
		<script type="text/javascript">
			if(confirm("你现在登录的是管理员账户！请先退出")){
				window.location.href='back.jsp';
			}else{
				history.go(0);
			}
		</script>
	</c:if>
	<jsp:include page="webTop.jsp"></jsp:include>
	<center>
	
		<div>
		<table>
		<tr>
			<td>订单号</td>
			<td>货品编号</td>
			<td>数量</td>
			<td>地址</td>
			<td>电话</td>
			<td>下单时间</td>
			<td>状态</td>
		</tr>
		
		<c:forEach items="${details }" var="ds">
		<tr>
			<td>${ds.detailNo }</td>
			<td>${ds.productNo }</td>
			<td>${ds.productNum}</td>
			<td>${ds.detailAdr }</td>
			<td>${ds.detailTel }</td>
			<td>${ds.detailDate }</td>
			<td>
				<c:if test="${ds.detailState==0 }">未发货</c:if>
				<c:if test="${ds.detailState==1 }">未发货已付款</c:if>
				<c:if test="${ds.detailState==2 }">已发货已付款</c:if>
				<c:if test="${ds.detailState==3 }">已收货未确认付款</c:if>
				<c:if test="${ds.detailState==4 }">已收货确认付款</c:if>
				<c:if test="${ds.detailState==5 }">交易完成</c:if>
				<c:if test="${ds.detailState==6 }">已经提醒过了！</c:if>
			</td>
			<td>
				<c:if test="${ds.detailState==0 }"><a href="pay.jsp?no=${ds.detailNo }">付款</a></c:if>
				<c:if test="${ds.detailState==1 }"><a href="/2ks/detail/setState.do?no=${ds.detailNo }&state=6">提醒发货</a></c:if>
				<c:if test="${ds.detailState==2 }"><a href="/2ks/detail/setState.do?no=${ds.detailNo }&state=3">确认收货</a></c:if>
				<c:if test="${ds.detailState==3 }"><a href="/2ks/detail/setState.do?no=${ds.detailNo }&state=4">确认付款</a></c:if>
				<c:if test="${ds.detailState==5 }"><a href="productInfo.jsp?no=${ds.productNo }">前去评论</a></c:if>
			</td>
			
		</tr>
		</c:forEach>
		
		</table>
		
		
		
		</div>
	
	</center>
	<jsp:include page="webBottom.jsp"></jsp:include>
</body>
</html>