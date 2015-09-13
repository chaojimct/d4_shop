<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
.menu { height: 48px; display: block; width: 1024px}
.menu ul { list-style: none; padding: 0; margin: 0; }
.menu ul li { float: left; /* �˵���Ԫ�ص����ݳ������ɼ� */  
			overflow: hidden; position: relative; text-align: center; line-height: 45px; }
.menu ul li a { /* ��������Զ�λ  */ 
			position: relative; display: block; width: 120px; height: 45px; font-family: Arial; font-size: 17px; font-weight: bold; letter-spacing: 1px; text-transform: uppercase; text-decoration: none; cursor: pointer; }
.menu ul li a span { /* ���в㽫ʹ�þ��Զ�λ */
			position: absolute; left: 0; width: 110px; }
.menu ul li a span.out { top: 0px; }
.menu ul li a span.over,  .menu ul li a span.bg { /* ���.over���.bg�����aԪ��-45px�Դﵽ���� */  
			top: -45px; }

#menu { background:url(js/bg_menu.gif) scroll 0 -1px repeat-x; border:1px solid #CCC; }
#menu ul li a { color: #000; }
#menu ul li a span.over { color: #FFF; }
#menu ul li span.bg { height: 45px; background: url(js/bg_over.gif) center center no-repeat; }
</style>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script language="javascript">
		$(document).ready(function() {
			
			// ��ÿ��a�е����ݰ�����һ���㣨span.out���У���span.out�����׷�ӱ���ͼ�㣨span.bg��
			$("#menu li a").wrapInner( '<span class="out"></span>' ).append( '<span class="bg"></span>' );

			// ѭ��Ϊ�˵���aÿ�����һ���㣨span.over��
			$("#menu li a").each(function() {
				$( '<span class="over">' +  $(this).text() + '</span>' ).appendTo( this );
			});

			$("#menu li a").hover(function() {
				// ��꾭��ʱ�򱻴����ĺ���
				$(".out",this).stop().animate({'top':'45px'},250); // ���»��� - ����
				$(".over",this).stop().animate({'top':'0px'},250); // ���»��� - ��ʾ
				$(".bg",this).stop().animate({'top':'0px'},	120); // ���»��� - ��ʾ

			}, function() {
				// ����Ƴ�ʱ�򱻴����ĺ���
				$(".out",this).stop().animate({'top':'0px'},250); // ���ϻ��� - ��ʾ
				$(".over",this).stop().animate({'top':'-45px'},250); // ���ϻ��� - ����
				$(".bg",this).stop().animate({'top':'-45px'},120); // ���ϻ��� - ����
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
				<a href="reg.jsp">ע��</a>
				<a href="login.jsp">��¼</a>
			</c:if>
			<c:if test="${!empty user }">
				<c:if test="${user.userGrade !=0 }">
					<script type="text/javascript">
						if(confirm("�����ڵ�¼���ǹ���Ա�˻�����������ǰ̨ҳ�棬�����˳�����")){
							window.location.href='back.jsp';
						}else{
							history.go(0);
						}
					</script>
				</c:if>
				<a href="/2ks/user/usermain.do">${user.userName }</a>��ӭ�㣡<a href="/2ks/user/logout.do">ע��</a>
			</c:if> --%>
			&nbsp;&nbsp;&nbsp;
		</div>
		<div id="menu" class="menu" >
		    <ul>
		       
		      <li><a href="product.jsp">�̳���Ʒ</a></li>
		      <li><a href="sellRank.jsp">����TOP10</a></li>
		      <li><a href="detail.jsp">�鿴����</a></li>
		      <li><a href="shoppingCar.jsp">���ﳵ</a></li>
		      <li><a href="usermain.jsp">������ҳ</a></li>
		    </ul>
		  </div>
	</center>
</body>
</html>