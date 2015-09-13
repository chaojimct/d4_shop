<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
.menu { height: 48px; display: block; width: 1024px}
.menu ul { list-style: none; padding: 0; margin: 0; }
.menu ul li { float: left; /* 菜单子元素的内容超出不可见 */  
			overflow: hidden; position: relative; text-align: center; line-height: 45px; }
.menu ul li a { /* 必须是相对定位  */ 
			position: relative; display: block; width: 120px; height: 45px; font-family: Arial; font-size: 17px; font-weight: bold; letter-spacing: 1px; text-transform: uppercase; text-decoration: none; cursor: pointer; }
.menu ul li a span { /* 所有层将使用绝对定位 */
			position: absolute; left: 0; width: 110px; }
.menu ul li a span.out { top: 0px; }
.menu ul li a span.over,  .menu ul li a span.bg { /* 起初.over层和.bg层相对a元素-45px以达到隐藏 */  
			top: -45px; }

#menu { background:url(js/bg_menu.gif) scroll 0 -1px repeat-x; border:1px solid #CCC; }
#menu ul li a { color: #000; }
#menu ul li a span.over { color: #FFF; }
#menu ul li span.bg { height: 45px; background: url(js/bg_over.gif) center center no-repeat; }
</style>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script language="javascript">
		$(document).ready(function() {
			
			// 把每个a中的内容包含到一个层（span.out）中，在span.out层后面追加背景图层（span.bg）
			$("#menu li a").wrapInner( '<span class="out"></span>' ).append( '<span class="bg"></span>' );

			// 循环为菜单的a每个添加一个层（span.over）
			$("#menu li a").each(function() {
				$( '<span class="over">' +  $(this).text() + '</span>' ).appendTo( this );
			});

			$("#menu li a").hover(function() {
				// 鼠标经过时候被触发的函数
				$(".out",this).stop().animate({'top':'45px'},250); // 向下滑动 - 隐藏
				$(".over",this).stop().animate({'top':'0px'},250); // 向下滑动 - 显示
				$(".bg",this).stop().animate({'top':'0px'},	120); // 向下滑动 - 显示

			}, function() {
				// 鼠标移出时候被触发的函数
				$(".out",this).stop().animate({'top':'0px'},250); // 向上滑动 - 显示
				$(".over",this).stop().animate({'top':'-45px'},250); // 向上滑动 - 隐藏
				$(".bg",this).stop().animate({'top':'-45px'},120); // 向上滑动 - 隐藏
			});
					

		});

	</script>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>new</title>
</head>
<body>
	<center>
		<div style="background-color: yellow;width: 1024px" align="right">
			<%-- <c:if test="${empty user }">
				<a href="reg.jsp">注册</a>
				<a href="login.jsp">登录</a>
			</c:if>
			<c:if test="${!empty user }">
				<c:if test="${user.userGrade !=0 }">
					<script type="text/javascript">
						if(confirm("你现在登录的是管理员账户！如果想浏览前台页面，请先退出！！")){
							window.location.href='back.jsp';
						}else{
							history.go(0);
						}
					</script>
				</c:if>
				<a href="/2ks/user/usermain.do">${user.userName }</a>欢迎你！<a href="/2ks/user/logout.do">注销</a>
			</c:if> --%>
			&nbsp;&nbsp;&nbsp;
		</div>
		<div id="menu" class="menu" >
		    <ul>
		       
		      <li><a href="product.jsp">商城商品</a></li>
		      <li><a href="sellRank.jsp">销量TOP10</a></li>
		      <li><a href="detail.jsp">查看订单</a></li>
		      <li><a href="shoppingCar.jsp">购物车</a></li>
		      <li><a href="usermain.jsp">个人主页</a></li>
		    </ul>
		  </div>
	</center>
</body>
</html>