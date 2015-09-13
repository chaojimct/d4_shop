<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- 

Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 2.3.1

Version: 1.3

Author: KeenThemes

Website: http://www.keenthemes.com/preview/?theme=metronic

Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469

-->

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

	<meta charset="utf-8" />

	<title>Metronic | Admin Dashboard Template</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES --> 

	<link rel="stylesheet" type="text/css" href="media/css/select2_metro.css" />

	<link rel="stylesheet" href="media/css/DT_bootstrap.css" />
	
	
	<link rel="stylesheet" type="text/css" href="media/css/bootstrap-fileupload.css" />

	<link rel="stylesheet" type="text/css" href="media/css/jquery.gritter.css" />

	<link rel="stylesheet" type="text/css" href="media/css/chosen.css" />

	<link rel="stylesheet" type="text/css" href="media/css/select2_metro.css" />

	<link rel="stylesheet" type="text/css" href="media/css/jquery.tagsinput.css" />

	<link rel="stylesheet" type="text/css" href="media/css/clockface.css" />

	<link rel="stylesheet" type="text/css" href="media/css/bootstrap-wysihtml5.css" />

	<link rel="stylesheet" type="text/css" href="media/css/datepicker.css" />

	<link rel="stylesheet" type="text/css" href="media/css/timepicker.css" />

	<link rel="stylesheet" type="text/css" href="media/css/colorpicker.css" />

	<link rel="stylesheet" type="text/css" href="media/css/bootstrap-toggle-buttons.css" />

	<link rel="stylesheet" type="text/css" href="media/css/daterangepicker.css" />

	<link rel="stylesheet" type="text/css" href="media/css/datetimepicker.css" />

	<link rel="stylesheet" type="text/css" href="media/css/multi-select-metro.css" />

	<link href="media/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>

	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

	<!-- BEGIN HEADER -->

	<div class="header navbar navbar-inverse navbar-fixed-top">

		<!-- BEGIN TOP NAVIGATION BAR -->

		<jsp:include page="web_top.jsp"></jsp:include>

		<!-- END TOP NAVIGATION BAR -->

	</div>

	<!-- END HEADER -->

	<!-- BEGIN CONTAINER -->

	<div class="page-container">

		<!-- BEGIN SIDEBAR -->

		<div class="page-sidebar nav-collapse collapse">

			<!-- BEGIN SIDEBAR MENU -->        

			<ul class="page-sidebar-menu">

				<li>

					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

					<div class="sidebar-toggler hidden-phone"></div>

					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

				</li>

				<li>

					<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

					<form class="sidebar-search">

						<div class="input-box">

							<a href="javascript:;" class="remove"></a>

							<input type="text" placeholder="查找..." />

							<input type="button" class="submit" value=" " />

						</div>

					</form>

					<!-- END RESPONSIVE QUICK SEARCH FORM -->

				</li>

				<li class="start active ">

					<a href="index.jsp">

					<i class="icon-home"></i> 

					<span class="title">主页</span>

					<span class="selected"></span>

					</a>

				</li>
				<li class="">

					<a href="Department_getDeps">

					<i class="icon-home"></i> 

					<span class="title">部门管理</span>

					</a>

				</li>
				
				<li class="">

					<a href="Employee_getEmps">

					<i class="icon-home"></i> 

					<span class="title">员工管理</span>

					</a>

				</li>		
				<li class="">

					<a href="User_getUsers?startStaus=0">

					<i class="icon-home"></i> 

					<span class="title">用户管理</span>

					</a>

				</li>	
				
				<li class="">

					<a href="Artist_getArts">

					<i class="icon-home"></i> 

					<span class="title">艺人管理</span>

					</a>

				</li>
				

				<li class="">

					<a href="Customer_getCuss">

					<i class="icon-home"></i> 

					<span class="title">客户管理</span>

					</a>

				</li>

				<li class="">

					<a href="Contract_getCons">

					<i class="icon-home"></i> 

					<span class="title">合同管理</span>

					</a>

				</li>
				<li class="">

					<a href="index.jsp">

					<i class="icon-home"></i> 

					<span class="title">人才管理</span>

					</a>

				</li>
							
				

				<li class="last ">

					<a href="Logistics_getLogs">

					<i class="icon-bar-chart"></i> 

					<span class="title">后勤管理</span>
					
					
					</a>

				</li>

			</ul>

			<!-- END SIDEBAR MENU -->

		</div>

		<!-- END SIDEBAR -->

		<!-- BEGIN PAGE -->

		<div class="page-content">

			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<div id="portlet-config" class="modal hide">

				<div class="modal-header">

					<button data-dismiss="modal" class="close" type="button"></button>

					<h3>Widget Settings</h3>

				</div>

				<div class="modal-body">

					Widget settings form goes here

				</div>

			</div>

			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<!-- BEGIN PAGE CONTAINER-->

			<div class="container-fluid">

				<!-- BEGIN PAGE HEADER-->

				<div class="row-fluid">

					<div class="span12">

						<!-- BEGIN STYLE CUSTOMIZER -->

						<div class="color-panel hidden-phone">

							<div class="color-mode-icons icon-color"></div>

							<div class="color-mode-icons icon-color-close"></div>

							<div class="color-mode">

								<p>THEME COLOR</p>

								<ul class="inline">

									<li class="color-black current color-default" data-style="default"></li>

									<li class="color-blue" data-style="blue"></li>

									<li class="color-brown" data-style="brown"></li>

									<li class="color-purple" data-style="purple"></li>

									<li class="color-grey" data-style="grey"></li>

									<li class="color-white color-light" data-style="light"></li>

								</ul>

								<label>

									<span>Layout</span>

									<select class="layout-option m-wrap small">

										<option value="fluid" selected>Fluid</option>

										<option value="boxed">Boxed</option>

									</select>

								</label>

								<label>

									<span>Header</span>

									<select class="header-option m-wrap small">

										<option value="fixed" selected>Fixed</option>

										<option value="default">Default</option>

									</select>

								</label>

								<label>

									<span>Sidebar</span>

									<select class="sidebar-option m-wrap small">

										<option value="fixed">Fixed</option>

										<option value="default" selected>Default</option>

									</select>

								</label>

								<label>

									<span>Footer</span>

									<select class="footer-option m-wrap small">

										<option value="fixed" >Fixed</option>

										<option value="default" >Default</option>

									</select>

								</label>

							</div>

						</div>

						<!-- END BEGIN STYLE CUSTOMIZER -->    

						<!-- BEGIN PAGE TITLE & BREADCRUMB-->

						<h3 class="page-title">

							主页 <small></small>

						</h3>

						<ul class="breadcrumb">

							<li>

								<i class="icon-home"></i>

								<a href="index.jsp">Home</a> 

								<i class="icon-angle-right"></i>

							</li>

							<li><a href="#">Dashboard</a></li>	

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->
				<div class="row-fluid">
					<div class="portlet-body form">

								<form action="#" class="form-horizontal" id="submit_form">

									<div class="form-wizard">
									<div id="bar" class="progress progress-success progress-striped">

											<div class="bar"></div>

										</div>

										<div class="tab-content">

											<div class="alert alert-error hide">

												<button class="close" data-dismiss="alert"></button>

												You have some form errors. Please check below.

											</div>

											<div class="alert alert-success hide">

												<button class="close" data-dismiss="alert"></button>

												Your form validation is successful!

											</div>

											<div class="tab-pane active" id="tab1">

												<h3 class="block">修改密码</h3>

												

												<div class="control-group">

													<label class="control-label">输入原密码<span class="required">*</span></label>

													<div class="controls">

														<input type="password" class="span6 m-wrap" name="password" id="password"/>

														<span class="help-inline">Provide your username</span>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">确认原密码<span class="required">*</span></label>

													<div class="controls">

														<input type="password" class="span6 m-wrap" name="rpassword" id="rpassword"/>

														<span class="help-inline">Confirm your password</span>

													</div>

												</div>
												
											</div>
										</div>
										

											<div class="tab-pane active" id="tab2" style="display: none">

												<h3 class="block">新密码</h3>

												

												<div class="control-group">

													<label class="control-label">输入新密码<span class="required">*</span></label>

													<div class="controls">

														<input type="password" class="span6 m-wrap" name="new_password" id="new_password"/>

														<span class="help-inline">Provide your username</span>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">确认新密码<span class="required">*</span></label>

													<div class="controls">

														<input type="password" class="span6 m-wrap" name="new_repassword" id="new_repassword"/>

														<span class="help-inline">Confirm your password</span>

													</div>

												</div>
												
											</div>
										
										
										<div class="form-actions clearfix">

											

											<a href="javascript:;" class="btn blue button-next" id="continue_btn">

											继续 <i class="m-icon-swapright m-icon-white"></i>

											</a>

											<a href="javascript:;" class="btn green button-submit" id="submit_btn" style="display: none">

											Submit <i class="m-icon-swapright m-icon-white"></i>

											</a>

										</div>
									</div>
								</form>
					</div>
												
				
				</div>
			
			</div>

			<!-- END PAGE CONTAINER-->    

		</div>

		<!-- END PAGE -->

	</div>

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER -->

	<jsp:include page="web_footer.jsp"></jsp:include>

	<!-- END FOOTER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->   

	<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script type="text/javascript" src="media/js/select2.min.js"></script>

	<script type="text/javascript" src="media/js/jquery.dataTables.js"></script>

	<script type="text/javascript" src="media/js/DT_bootstrap.js"></script>
	
	
	<script type="text/javascript" src="media/js/chosen.jquery.min.js"></script>

	<script type="text/javascript" src="media/js/wysihtml5-0.3.0.js"></script> 

	<script type="text/javascript" src="media/js/bootstrap-wysihtml5.js"></script>

	<script type="text/javascript" src="media/js/jquery.tagsinput.min.js"></script>

	<script type="text/javascript" src="media/js/bootstrap-datepicker.js"></script>

	<script type="text/javascript" src="media/js/bootstrap-datetimepicker.js"></script>

	<script type="text/javascript" src="media/js/clockface.js"></script>

	<script type="text/javascript" src="media/js/date.js"></script>

	<script type="text/javascript" src="media/js/daterangepicker.js"></script> 

	<script type="text/javascript" src="media/js/bootstrap-timepicker.js"></script>

	<script type="text/javascript" src="media/js/jquery.inputmask.bundle.min.js"></script>   

	<script type="text/javascript" src="media/js/jquery.multi-select.js"></script>   

	<script src="media/js/bootstrap-modal.js" type="text/javascript" ></script>

	<script src="media/js/bootstrap-modalmanager.js" type="text/javascript" ></script> 

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="media/js/app.js" type="text/javascript"></script>

	<script src="media/js/index.js" type="text/javascript"></script>        

	<!-- END PAGE LEVEL SCRIPTS -->  

	<script>

		jQuery(document).ready(function() {    
			$("a#continue_btn").click(function(){
				alert($("#password").val()+"---"+$("#rpassword").val());
				 $.post("User_confirmPwd",
			     {
				   
				   pwd:$("#password").val(),
				   rePwd:$("#rpassword").val()
			     },
			     function(data,status){
			    	 alert(data);
				   if(data == "wrongPwd"){
					   
					   alert("两次输入密码不相同或者密码输入不正确！！");
				   }else if(data == "success"){
					   $("#tab1").hide();
					   $("#continue_btn").hide();
					   $("#tab2").show();
					   $("#submit_btn").show();
				   }else{
					   location.href="login.jsp";
				   }
			     });
			
		   });
			$("a#submit_btn").click(function(){
				alert($("#new_password").val()+"---"+$("#new_repassword").val());
				 $.post("User_changePwd",
			     {
				   
				   pwd:$("#new_password").val(),
				   rePwd:$("#new_repassword").val()
			     },
			     function(data,status){
			    	 
				   if(data == "success"){
					   alert("密码修改成功");
					   location.href="index.jsp";
				   }
			     });
			
		   });

		   App.init(); // initlayout and core plugins
		   
		   TableEditable.init();
		   
		   FormComponents.init();

		   Index.init();

		   Index.initJQVMAP(); // init index page's custom scripts

		   Index.initCalendar(); // init index page's custom scripts

		   Index.initCharts(); // init index page's custom scripts

		   Index.initChat();

		   Index.initMiniCharts();

		   Index.initDashboardDaterange();

		   Index.initIntro();

		});

	</script>

	<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->

</html>