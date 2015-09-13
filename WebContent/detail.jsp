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
		<script type="text/javascript">alert('���ȵ�¼��Ȼ���ڽ��й���');window.location.href='login.jsp';</script>
		
	</c:if>
	<c:if test="${user.userGrade ==1 }">
		<script type="text/javascript">
			if(confirm("�����ڵ�¼���ǹ���Ա�˻��������˳�")){
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
			<td>������</td>
			<td>��Ʒ���</td>
			<td>����</td>
			<td>��ַ</td>
			<td>�绰</td>
			<td>�µ�ʱ��</td>
			<td>״̬</td>
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
				<c:if test="${ds.detailState==0 }">δ����</c:if>
				<c:if test="${ds.detailState==1 }">δ�����Ѹ���</c:if>
				<c:if test="${ds.detailState==2 }">�ѷ����Ѹ���</c:if>
				<c:if test="${ds.detailState==3 }">���ջ�δȷ�ϸ���</c:if>
				<c:if test="${ds.detailState==4 }">���ջ�ȷ�ϸ���</c:if>
				<c:if test="${ds.detailState==5 }">�������</c:if>
				<c:if test="${ds.detailState==6 }">�Ѿ����ѹ��ˣ�</c:if>
			</td>
			<td>
				<c:if test="${ds.detailState==0 }"><a href="pay.jsp?no=${ds.detailNo }">����</a></c:if>
				<c:if test="${ds.detailState==1 }"><a href="/2ks/detail/setState.do?no=${ds.detailNo }&state=6">���ѷ���</a></c:if>
				<c:if test="${ds.detailState==2 }"><a href="/2ks/detail/setState.do?no=${ds.detailNo }&state=3">ȷ���ջ�</a></c:if>
				<c:if test="${ds.detailState==3 }"><a href="/2ks/detail/setState.do?no=${ds.detailNo }&state=4">ȷ�ϸ���</a></c:if>
				<c:if test="${ds.detailState==5 }"><a href="productInfo.jsp?no=${ds.productNo }">ǰȥ����</a></c:if>
			</td>
			
		</tr>
		</c:forEach>
		
		</table>
		
		
		
		</div>
	
	</center>
	<jsp:include page="webBottom.jsp"></jsp:include>
</body>
</html>