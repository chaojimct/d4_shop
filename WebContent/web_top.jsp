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
<div class="navbar-inner">

			<div class="container-fluid">

				<!-- BEGIN LOGO -->

				<a class="brand" href="index.jsp">

				<!-- <img src="media/image/logo.png" alt="logo"/> -->

				</a>

				<!-- END LOGO -->

				<!-- BEGIN RESPONSIVE MENU TOGGLER -->

				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">

				<img src="media/image/menu-toggler.png" alt="" />

				</a>          

				<!-- END RESPONSIVE MENU TOGGLER -->            

				<!-- BEGIN TOP NAVIGATION MENU -->              

				<ul class="nav pull-right">

					<!-- BEGIN NOTIFICATION DROPDOWN -->   

					<li class="dropdown" id="header_task_bar">

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">

						<i class="icon-tasks"></i>

						<span class="badge">${user.tasks }</span>

						</a>

						<ul class="dropdown-menu extended tasks">

							<li>

								<p>你有${user.tasks }个合同需审核</p>

							</li>
							<s:iterator value="#attr.ccons" var="c">
							
								<li>
	
									<a href="#">
	
									<span class="task">
	
									<span class="desc">${c.name }</span>
	
									<span class="percent">30%</span>
	
									</span>
	
									<span class="progress progress-success ">
	
									<span style="width: 30%;" class="bar"></span>
	
									</span>
	
									</a>
	
								</li>
							</s:iterator>
							
							<s:iterator value="#attr.ccons2" var="c">
								<li>
	
									<a href="#">
	
									<span class="task">
	
									<span class="desc">${c.name }</span>
	
									<span class="percent">60%</span>
	
									</span>
	
									<span class="progress progress-success ">
	
									<span style="width: 30%;" class="bar"></span>
	
									</span>
	
									</a>
	
								</li>
							</s:iterator>
							

							

							

							<li class="external">

								<a href="Contract_getConsToSet">查看所有 <i class="m-icon-swapright"></i></a>

							</li>

						</ul>

					</li>

					

					<!-- END INBOX DROPDOWN -->

					<!-- BEGIN TODO DROPDOWN -->

					

					<!-- BEGIN USER LOGIN DROPDOWN -->

					<li class="dropdown user">

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">

						

						<span class="username">${user.name }</span>

						<i class="icon-angle-down"></i>

						</a>

						<ul class="dropdown-menu">

							<li><a href="change_pwd.jsp"><i class="icon-user"></i> 修改密码</a></li>

							<!-- <li><a href="page_calendar.jsp"><i class="icon-calendar"></i> My Calendar</a></li>

							<li><a href="inbox.jsp"><i class="icon-envelope"></i> My Inbox(3)</a></li> -->

							<li><a href="Contract_getConsToSet"><i class="icon-tasks"></i> 我的任务</a></li>
							
							<li><a href="Log_getLogs"><i class="icon-tasks"></i> 显示日志</a></li>

							<li class="divider"></li>

							<li><a href="User_logout"><i class="icon-key"></i> 退出登录</a></li>

						</ul>

					</li>

					<!-- END USER LOGIN DROPDOWN -->

				</ul>

				<!-- END TOP NAVIGATION MENU --> 

			</div>

		</div>
</body>
</html>