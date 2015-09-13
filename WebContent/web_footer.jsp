<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	<s:if test="#session.user == null">
		alert("请先登录！");
		location.href="login.jsp";
	</s:if>
</script>

</head>
<body>
<div class="footer navbar-fixed">

		<div class="footer-inner">

			2015 &copy;  山东科技大学济南校区   计算机   12-1.

		</div>

		<div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>

			</span>

		</div>

	</div>
</body>
</html>